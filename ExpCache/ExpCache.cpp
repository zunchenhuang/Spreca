#include "ExpCache.h"
#include "z3++.h"
#include "z3_api.h"

#include <cstdio>
#include <iostream>
#include <string>
#include <algorithm>
#include <deque>
#include <vector>
#include <ctime>
#include <boost/container/flat_set.hpp>
#include <boost/format.hpp>
#include <boost/graph/adjacency_matrix.hpp>
#include <boost/graph/transitive_closure.hpp>
#include <boost/graph/graphviz.hpp>
#include <boost/algorithm/string/find.hpp>
#include "../Analysis/CacheModel.h"

using namespace llvm;
using namespace z3;

#define DEBUG_TYPE "expcache"

namespace expc {
void ExpCache::ResultFileGen() {
    std::string resultFilePath = ResultFilePath;
    resultFilePath += std::to_string(CacheSize) + '_' + std::to_string(CacheAssoc) + "_" + std::to_string(WindowSize)+ "_result.txt";
    boost::replace_first(resultFilePath, "Traces", "Results");
    boost::replace_first(resultFilePath, ".log", "_explicit_");
    errs() << "Output file path: " << resultFilePath << "\n";
    ResultOut.open(resultFilePath);
    assert(ResultOut.is_open() && "Result Log File not OPEN ERROR!");
}

void ExpCache::CacheInOrderSimu() {
    std::vector<MemOp> MemoryOps = Model->MemoryOps;
    std::string statesFilePath = ResultFilePath;
//    statesFilePath += std::to_string(CacheSize) + '_' + std::to_string(CacheAssoc) + '_' +"inorderstates.txt";
//    boost::replace_first(statesFilePath, "Traces", "InOrderStates");
//    boost::replace_first(statesFilePath, ".log", "_");
//    std::ofstream out(statesFilePath);
//    std::cout << out.is_open();
    std::vector<std::vector<std::pair<long long int, int>>> Ages;
    std::vector<std::pair<long long int, int>> initAges;
    int ColdMissesCounter = 0;
    int HotMissesCounter = 0;

    for (auto addr : this->Addrs) {
        initAges.emplace_back(addr, -1);
    }
    Ages.push_back(initAges);
    this->HotMisses.push_back(false);
    this->ColdMisses.push_back(false);

    int counter = 0;
    for (auto memOp : MemoryOps) {
        std::vector<std::pair<long long int, int>> currAges;
        long long int addr = IndexToAddr[counter];
        assert(Addrs.find(addr) != Addrs.end() && "Cant find accessed Addr!");
        int accessedAgeIndex = Addrs.find(addr) - Addrs.begin();
        int accessedAgePrev = Ages[counter][accessedAgeIndex].second;
        int prevCounter = 0;
        if(accessedAgePrev == Model->CacheAssoc){
            HotMissesCounter++;
            this->HotMisses.push_back(true);
        }
        else
            this->HotMisses.push_back(false);
        if(accessedAgePrev == -1){
            this->ColdMisses.push_back(true);
            ColdMissesCounter++;
        }
        else
            this->ColdMisses.push_back(false);

        for (auto prevAgePair : Ages[counter]) {
            if(prevCounter == accessedAgeIndex) {
                currAges.emplace_back(prevAgePair.first, 0);
            }
            else if (Ages[counter][prevCounter].second == Model->CacheAssoc || Ages[counter][prevCounter].second == -1
            || (Ages[counter][prevCounter].second >= accessedAgePrev && accessedAgePrev!=-1)) {
                currAges.emplace_back(prevAgePair.first, prevAgePair.second);
            }
            else
                currAges.emplace_back(prevAgePair.first, prevAgePair.second+1);
            prevCounter++;
        }
        Ages.push_back(currAges);
        counter++;
    }
    this->InOrderAges = Ages;
}

void ExpCache::CacheExplicit(int windowct, bool ageCheck) {
    using namespace boost;
    std::vector<MemOp> MemoryOps = Model->MemoryOps;

    int MemoryOpsSize = MemoryOps.size();
    std::map<std::string, MemOp> InstIDToMemOp;
    std::map<std::string, int> InstIDTOIndex;
    std::map<int, long long int> IndexToAddr;
    int traceSize = MemoryOps.size();
    errs() << "TraceSize is : " << traceSize << " Mem Model : " << MemoryModel <<  "\n";

    std::vector<Dep> DDeps = Model->DDeps;
    std::vector<Dep> CDeps = Model->CDeps;

    if (MemoryModel == "TSO") {
        errs() << "Memory Model TSO\n";
        std::vector<MemOp> StoreOps;
        for (const auto& memoryOp : MemoryOps) {
            if (memoryOp.Type) {
                StoreOps.push_back(memoryOp);
            }
        }
        int storeSize = StoreOps.size();
        if (storeSize > 1){
            for (int i = 1; i < StoreOps.size(); ++i) {
                DDeps.push_back({.Type = true, .SrcID = StoreOps[i-1].InstID, .DestID = StoreOps[i].InstID});
            }
        }
    }

    std::map<std::string, std::vector<std::string>> HBMap;
    std::vector<expr_vector> Ages;
    int index = 0;
    errs() << "TRACE SIZE IS : " << MemoryOpsSize << "\n";
    ResultOut << "TRACE SIZE IS : " << MemoryOpsSize << "\n";
    for (auto op : MemoryOps) {
        errs() << "MemOP " << index << " : LD/ST: " << op.Type << " InstID:" << op.InstID << " ";
        ResultOut << "MemOP " << index << " : LD/ST: " << op.Type << " InstID:" << op.InstID << " ";
        if (op.Symbolic) {
            errs() << "Symbolic Addrs: ";
            ResultOut << "Symbolic Addrs: ";
            for (auto addr : op.SymbolicValues) {
                errs() << to_string(boost::format("0x%x") % addr) << " ";
                ResultOut << to_string(boost::format("0x%x") % addr) << " ";
            }
            errs() << "\n";
            ResultOut << "\n";
        }
        else {
            errs() << "Non-Symbolic Addr: " << to_string(boost::format("0x%x") % op.Addr) << "\n";
            ResultOut <<"Non-Symbolic Addr: " << to_string(boost::format("0x%x") % op.Addr) << "\n";
        }
        InstIDToMemOp[op.InstID] = op;
        InstIDToIndex[op.InstID] = index;
        IndexToAddr[index] = op.Addr;
        this->Addrs.insert(op.Addr);
        if (op.Symbolic) {
            for (auto addr : op.SymbolicValues) {
                this->Addrs.insert(addr);
            }
        }
        if(index != 0)
            op.Prev = &MemoryOps[index-1];
        else
            op.Prev = nullptr;
        if(index != MemoryOps.size()-1)
            op.Succ = &MemoryOps[index+1];
        else
            op.Succ = nullptr;
        index++;
    }
    // too few memory ops
    //    if(this->Addrs.size() <= Model->CacheAssoc) {
    //        errs() << "Too few distinguished addresses, abort\n";
    //        return;
    //    }

    this->IndexToAddr = IndexToAddr;
    this->InstIDToIndex = InstIDToIndex;

    // Get the inorder cache states for every addr
    CacheInOrderSimu();

    //  Impose sliding window size
    int windowCounter = windowct;
    if(traceSize < WindowSize) {
        WindowSize = traceSize;
    }

    MemOp initMemOp = {.Addr = 0, .Type = true, .InstID = "Init", .InOrderPC = -1,
                       .DebugLoc = "-1,-1", .Symbolic = false, .SymbolicValues = {}};


    std::vector<MemOp>::const_iterator first, last;

    // Sliding window implementation
    // Sliding window implementation
    do {
        errs() << "ROUND-------------: " << windowCounter << "\n";
        ResultOut << "ROUND-------------: " << windowCounter << "\n";

        std::set<std::string> windowInstIDs;
        std::vector<MemOp> windowOps = (windowCounter == 0) ? std::vector<MemOp>{initMemOp} : std::vector<MemOp>{};
        first = (windowCounter == 0) ? MemoryOps.begin() + windowCounter : MemoryOps.begin() + windowCounter -1;
        last = MemoryOps.begin() + WindowSize + windowCounter;
        for (; first != last; ++first) {
            windowOps.push_back(*first);
        }
        bool symboFlag = false;
        for (auto op : windowOps) {
            LLVM_DEBUG(dbgs() << op.InstID << "\n");
            if (op.Symbolic && op.InstID != windowOps[0].InstID) symboFlag = true;
        }

        if (!symboFlag) {
            errs() << "No symbolic values to check, skip!\n";
            windowCounter++;
            continue;
        }

        LLVM_DEBUG(dbgs() << "\nAges exprs:\n");
        LLVM_DEBUG(dbgs() << "Window Memory Ops Size : " << windowOps.size() << "\n");

        Inst_Graph windowOpsIG;
        std::vector<vertex_t> windowOpsVerts(windowOps.size());
        std::vector<const char *> windowOpsVertLabels;
        std::map<std::string, int> windowOpsInstIDToIndex;

        for (int i = 0; i < windowOps.size(); ++i) {
            windowOpsInstIDToIndex[windowOps[i].InstID] = i;
            windowInstIDs.insert(windowOps[i].InstID);
            windowOpsVerts[i] = boost::add_vertex(Index(i, Name(windowOps[i].InstID.c_str())), windowOpsIG);
            windowOpsVertLabels.push_back(windowOps[i].InstID.c_str());
        }

        if (windowCounter == 0) {
            // Init should be the first to execute
            for (int i = 1; i < windowOpsVerts.size(); ++i) {
                boost::add_edge(windowOpsVerts[0], windowOpsVerts[i], windowOpsIG);
            }
        }
        // Add Happens before relation into the graph
        LLVM_DEBUG(dbgs() << "C DEPS\n");
        for (const auto& dep : CDeps) {
            if (windowInstIDs.count(dep.SrcID) && windowInstIDs.count(dep.DestID)) {
                int srcIndex = windowOpsInstIDToIndex[dep.SrcID];
                int destIndex = windowOpsInstIDToIndex[dep.DestID];
                LLVM_DEBUG(dbgs() << "SRC ID : " << srcIndex << " DEST ID: " << destIndex << "\n");
                boost::add_edge(windowOpsVerts[srcIndex], windowOpsVerts[destIndex], windowOpsIG);
            }
        }

        LLVM_DEBUG(dbgs() << "D DEPS\n");
        for (const auto& dep : DDeps) {
            if (windowInstIDs.count(dep.SrcID) && windowInstIDs.count(dep.DestID)) {
                int srcIndex = windowOpsInstIDToIndex[dep.SrcID];
                int destIndex = windowOpsInstIDToIndex[dep.DestID];
                LLVM_DEBUG(dbgs() << "SRC ID : " << srcIndex << " DEST ID: " << destIndex << "\n");
                boost::add_edge(windowOpsVerts[srcIndex], windowOpsVerts[destIndex], windowOpsIG);
            }
        }
        LLVM_DEBUG(dbgs() << "Graph G:\n");

        typename graph_traits< Inst_Graph >::vertex_iterator ui, ui_end;
        for (boost::tie(ui, ui_end) = vertices(windowOpsIG); ui != ui_end; ++ui)
        {
            LLVM_DEBUG(dbgs() << get(get(vertex_name, windowOpsIG), *ui) << " <--> ");
            typename graph_traits< Inst_Graph >::out_edge_iterator ei, ei_end;
            for (boost::tie(ei, ei_end) = out_edges(*ui, windowOpsIG); ei != ei_end; ++ei)
                LLVM_DEBUG(dbgs() << get(get(vertex_name, windowOpsIG), target(*ei, windowOpsIG)) << " ");
            LLVM_DEBUG(dbgs() << '\n');
        }

        adjacency_list<> windowOpsTC;
        std::map<std::string, std::vector<std::string>> windowHBMap;
        transitive_closure(windowOpsIG, windowOpsTC);

        LLVM_DEBUG(dbgs() << "Graph G+:\n");
        graph_traits < adjacency_list <> >::vertex_iterator it, end;
        graph_traits < adjacency_list <> >::adjacency_iterator ai, a_end;
        property_map < adjacency_list <>, vertex_index_t >::type index_map = get(vertex_index, windowOpsTC);
        for (boost::tie(it, end) = vertices(windowOpsTC); it != end; ++it) {
            LLVM_DEBUG(dbgs() << windowOpsVertLabels[get(index_map, *it)]);
            windowHBMap[windowOpsVertLabels[get(index_map, *it)]] = {};
            boost::tie(ai, a_end) = adjacent_vertices(*it, windowOpsTC);
            if (ai == a_end)
                LLVM_DEBUG(dbgs() << " has no deps");
            else
                LLVM_DEBUG(dbgs() << " schedule before : ");
            for (; ai != a_end; ++ai) {
                LLVM_DEBUG(dbgs() << windowOpsVertLabels[get(index_map, *ai)]);
                windowHBMap[windowOpsVertLabels[get(index_map, *it)]].push_back(windowOpsVertLabels[get(index_map, *ai)]);
                if (boost::next(ai) != a_end)
                    LLVM_DEBUG(dbgs()<< ", ");
            }
            LLVM_DEBUG(dbgs()<< "\n");
        }
        LLVM_DEBUG(dbgs()<< "\n");

        clock_t timeBegin = clock();
        int skipCounter = 0, checkCounter = 0;
        bool findMiss = false;

        for(auto pair : windowHBMap) {
            auto first = pair.first;
            auto second = pair.second;
            ResultOut << first << " Happens before: \t";
            for (auto si : second) {
                ResultOut << si << '\t';
            }
            ResultOut << "\n";
        }

        CachePermutation(windowOps, windowCounter, windowHBMap, 1, windowOps.size() - 1, skipCounter, checkCounter, findMiss);

        clock_t timeEnd = clock();
        double elapsed_secs = double(timeEnd - timeBegin) / CLOCKS_PER_SEC;
        errs() << "Current Round Time Elapsed: " << to_string(elapsed_secs) << "\n";
        ResultOut << "Current Round Time Elapsed: " << to_string(elapsed_secs) << "\n";
        errs() << "Current Round Skipped Permuation number: " << skipCounter << "\n";
        ResultOut << "Current Round Skipped Permuation number: " << skipCounter << "\n";
        errs() << "Current Round Checked Permuation number: " << checkCounter << "\n";
        ResultOut << "Current Round Checked Permuation number: " << checkCounter << "\n";
        windowCounter++;
    } while (traceSize > (WindowSize+windowCounter-1));
    errs() << "Finished All\n";
    ResultOut << "Finished All\n";
}

bool ExpCache::CachePermutation(std::vector<MemOp> windowOps,
                                     int windowCounter,
                                     std::map<std::string, std::vector<std::string>> &windowHBMap,
                                     int l, int r, int &skipCounter, int &checkCounter, bool &findMiss) {
    if(this->FindOne && findMiss) {
        return true;
    }
    // Base case
    if (l == r) {
        for (int i = 1; i < windowOps.size()-1; i++) {
            for (int j = i+1; j < windowOps.size(); j++) {
                std::string prevID = windowOps[i].InstID;
                std::string succID = windowOps[j].InstID;
                if (windowHBMap.count(succID)) {
                    if (std::find(windowHBMap[succID].begin(), windowHBMap[succID].end(), prevID)
                    != windowHBMap[succID].end()) {
                        //                        errs() << prevID << " " << succID << "\n";
                        //                        errs() << "Found Scheduling constraint and skip Explicit check\n";
                        //LLVM_DEBUG(dbgs() << "Found Scheduling constraint and skip Explicit check:" << prevID << " " << succID <<  "\n");
                        skipCounter++;
                        return false;
                    }
                }
            }
        }
        //        errs() << "\n Calling Miss Check:\n";
        checkCounter++;
        LLVM_DEBUG(dbgs() << "\nCurrent Feasible Permutation is : \n";);
        bool inorder = true;
        for (int i = 0; i < windowOps.size(); ++i) {
            MemOp op = windowOps[i];
            if (i > 0) {
                if (op.InOrderPC < windowOps[i-1].InOrderPC) {
                    inorder = false;
                }
            }
            LLVM_DEBUG(dbgs() << op.InstID << " ");
        }
        if (inorder) return false;
        LLVM_DEBUG(dbgs() << "\n");
        findMiss = ExplicitCheckMiss(windowOps, windowCounter);
        return false;
    }

    else {
        // Permutations made
        for (int i = l; i <= r; i++) {

            // Swapping done
            std::swap(windowOps[l], windowOps[i]);

            // Recursion called
            CachePermutation(windowOps, windowCounter, windowHBMap, l + 1, r, skipCounter, checkCounter, findMiss);

            //backtrack
            std::swap(windowOps[l], windowOps[i]);
        }
    }
}

bool ExpCache::ExplicitCheckMiss(std::vector<MemOp> windowOps, int windowCounter) {
    using namespace boost;
    std::vector<std::vector<std::vector<std::pair<long long int, int>>>> allAges;

    container::flat_set<long long int> windowAddrs;
    std::map<int, long long int> IndexToCurrAddr;

    int symbolicOpIndex = -1;
    std::string symbolicID;
    for (int i = 1; i < windowOps.size(); ++i) {
        auto currOP = windowOps[i];
        windowAddrs.insert(windowOps[i].Addr);
        if(currOP.Symbolic) {
            symbolicOpIndex = i;
            symbolicID = currOP.InstID;
            for (auto addr : currOP.SymbolicValues) {
                windowAddrs.insert(addr);
            }
        }
    }
    assert(symbolicOpIndex != -1);
    int newVecAddrCounter = 0;
    for (auto addr : windowAddrs) {
        IndexToCurrAddr[newVecAddrCounter] = addr;
        newVecAddrCounter++;
    }

    std::vector<std::vector<int>> hitOrExtraMissRecord;

    for (int symboIndex = 0; symboIndex < windowOps[symbolicOpIndex].SymbolicValues.size(); symboIndex++) {
        hitOrExtraMissRecord.push_back(std::vector<int>{});
        std::vector<std::pair<long long int, int>> initAges;
        LLVM_DEBUG( dbgs() << "Pushing initial ages:\n";);
        for (auto addr : windowAddrs) {
            assert(Addrs.find(addr) != Addrs.end() && "Cant find accessed Addr!");
            int accessedAgeIndex = Addrs.find(addr) - Addrs.begin();
            initAges.push_back(this->InOrderAges[windowCounter][accessedAgeIndex]);
        }
        std::vector<std::vector<std::pair<long long int, int>>> ages;
        ages.push_back(initAges);
        for (int i = 1; i < windowOps.size(); ++i) {
            auto memOp = windowOps[i];
            std::vector<std::pair<long long int, int>> currAges;
            long long int addr;
            if (memOp.InstID == symbolicID) {
                addr = *(windowOps[symbolicOpIndex].SymbolicValues.begin() + symboIndex);
                //errs() << "Symbolic addr : " << addr << "\n";
            }
            else {
                addr = memOp.Addr;
            }
            if (addr == 0)
                errs() << addr << '\t';
            assert(windowAddrs.find(addr) != windowAddrs.end() && "Cant find accessed Addr!");
            int accessedAgeIndex = windowAddrs.find(addr) - windowAddrs.begin();
            int accessedAgePrev = ages[i-1][accessedAgeIndex].second;
            int prevCounter = 0;
            if (accessedAgePrev == Model->CacheAssoc) {
                hitOrExtraMissRecord[symboIndex].push_back(1);
            }
            else if (accessedAgePrev < Model->CacheAssoc && accessedAgePrev != -1) {
                hitOrExtraMissRecord[symboIndex].push_back(0);
            }
            else {
                hitOrExtraMissRecord[symboIndex].push_back(-1);
            }
            for (auto prevAgePair : ages[i-1]) {
                if (prevCounter == accessedAgeIndex) {
                    currAges.emplace_back(prevAgePair.first, 0);
                }
                else if (ages[i-1][prevCounter].second == Model->CacheAssoc || ages[i-1][prevCounter].second == -1
                || (ages[i-1][prevCounter].second >= accessedAgePrev && accessedAgePrev != -1)) {
                    currAges.emplace_back(prevAgePair.first, prevAgePair.second);
                }
                else
                    currAges.emplace_back(prevAgePair.first, prevAgePair.second + 1);
                prevCounter++;
            }
            ages.push_back(currAges);
        }
        allAges.push_back(ages);
    }

//    for (int i = symbolicOpIndex; i < hitOrExtraMissRecord.size(); i++) {
    int markExtraMiss = -1;
    int markHit = -1;
    bool extraMiss = false;
    long long int addrExtraMiss, addrHit;
    //errs() << hitOrExtraMissRecord.size() << " " << hitOrExtraMissRecord[0].size() << "\n";
    for (int i = 0; i < hitOrExtraMissRecord[0].size(); i++) {
        for (int j = 0; j < hitOrExtraMissRecord.size(); j++) {
            //        errs() << hitOrExtraMissRecord[i][j] << " ";
            if (hitOrExtraMissRecord[j][i] == 1) markExtraMiss = j;
            else if (hitOrExtraMissRecord[j][i] == 0) markHit = j;
        }
        if (markExtraMiss != -1 && markHit != -1 && markExtraMiss != markHit) {
            errs() << markExtraMiss << " " << markHit << "\n";
            addrExtraMiss = *(windowOps[symbolicOpIndex].SymbolicValues.begin() + markExtraMiss);
            addrHit = *(windowOps[symbolicOpIndex].SymbolicValues.begin() + markHit);
            errs() << "SAT\n";
            ResultOut << "SAT\n";
            for (auto & op : windowOps) {
                ResultOut << op.InstID << " ";
            }
            ResultOut << "\n";
            extraMiss = true;
        }
        if (extraMiss){
            errs() << "Extra miss could occur at : Ln,Col: " << windowOps[i+1].DebugLoc << " Inst ID: " << windowOps[i+1].InstID << "\n";
            //        errs() << PCs[0].to_string() + " to " + PCs[PCs.size()-1].to_string() + " values: \n";
            //        LogOut << "SAT\n";
            ResultOut << "Extra miss could occur at : Ln,Col: " << windowOps[i+1].DebugLoc << " Inst ID: " << windowOps[i+1].InstID << "\n";

            ResultOut << "Symbolic V1: " << to_string(boost::format("0x%x") % addrExtraMiss) << "\n";
            errs() << "Symbolic V1: " << to_string(boost::format("0x%x") % addrExtraMiss) << "\n";
            std::vector<std::vector<std::pair<long long int, int>>> ages;

            ages = allAges[markExtraMiss];
            for (int j = 0; j < ages[0].size(); ++j) {
                errs() << to_string(boost::format("0x%x") % ages[0][j].first) << " : ";
                ResultOut <<  to_string(boost::format("0x%x") % ages[0][j].first) << " : ";

                for (int i = 0; i < ages.size(); ++i) {
                    errs() << ages[i][j].second << " | ";
                    ResultOut << ages[i][j].second << " | ";
                }
                ResultOut << "\n";
                errs() << "\n";
            }
            ages = allAges[markHit];
            ResultOut << "Symbolic V2: " << to_string(boost::format("0x%x") % addrHit) << "\n";
            errs() << "Symbolic V2: " << to_string(boost::format("0x%x") % addrHit) << "\n";

            for (int j = 0; j < ages[0].size(); ++j) {
                errs() << to_string(boost::format("0x%x") % ages[0][j].first) << " : ";
                ResultOut << to_string(boost::format("0x%x") % ages[0][j].first) << " : ";

                for (int i = 0; i < ages.size(); ++i) {
                    errs() << ages[i][j].second << " | ";
                    ResultOut << ages[i][j].second << " | ";
                }
                ResultOut << "\n";
                errs() << "\n";
            }
            break;
        }
    }
    return extraMiss;

//    }
}

}
