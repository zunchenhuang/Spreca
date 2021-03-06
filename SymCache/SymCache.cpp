#include "SymCache.h"
#include "z3++.h"
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
#include <boost/algorithm/string.hpp>
using namespace llvm;
using namespace z3;

#define DEBUG_TYPE "symcache"

namespace symc{

void SymCache::ResultFileGen() {
    std::string resultFilePath = ResultFilePath;
    resultFilePath += std::to_string(CacheSize) + '_' + std::to_string(CacheAssoc) + "_" + std::to_string(WindowSize)+ "_result.txt";
    boost::replace_first(resultFilePath, "Traces", "Results");
    boost::replace_first(resultFilePath, ".log", "_");
    errs() << "Output file path: " << resultFilePath << "\n";
    ResultOut.open(resultFilePath);
    assert(ResultOut.is_open() && "Result Log File not OPEN ERROR!");
}

void SymCache::CacheInOrderSimu() {
    std::vector<MemOp> MemoryOps = Model->MemoryOps;
    std::string statesFilePath = ResultFilePath;
    statesFilePath += std::to_string(CacheSize) + '_' + std::to_string(CacheAssoc) + '_' +"inorderstates.txt";
    boost::replace_first(statesFilePath, "Traces", "InOrderStates");
    boost::replace_first(statesFilePath, ".log", "_");
    std::ofstream out(statesFilePath);
    std::cout << out.is_open();
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

    counter = 0;
    for (const auto& ages : Ages) {
        if(counter == 0)
            out << "Instruction " << std::to_string(counter) << " Init\n";
        else
            out << "Instruction " << std::to_string(counter) << " " << MemoryOps[counter-1].InstID << "\n";
        out << "Hot-Miss: " << std::to_string(HotMisses[counter]) << "\n";
        out << "Cold-Miss: " << std::to_string(ColdMisses[counter]) << "\n";
        for (auto age : ages) {
            std::string addrStr = to_string(boost::format("0x%x") % age.first);
            out << addrStr + " " + std::to_string(age.second) + "\n";
        }
        counter++;
    }
    out << "HotMisses: " << HotMissesCounter << " ColdMisses: " << ColdMissesCounter << "\n";
    out.close();
}

void SymCache::CachePredictiveAnalysis(int windowct) {
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
        SymCacheZ3Check(windowOps, windowCounter, windowHBMap);

        clock_t timeEnd = clock();
        double elapsed_secs = double(timeEnd - timeBegin) / CLOCKS_PER_SEC;
        errs() << "Current Round Time Elapsed: " << to_string(elapsed_secs) << "\n";
        ResultOut << "Current Round Time Elapsed: " << to_string(elapsed_secs) << "\n";
        windowCounter++;
    } while (traceSize > (WindowSize+windowCounter-1));
    errs() << "Finished All\n";
    ResultOut << "Finished All\n";
}

// Caculate all feasible predecessors for later less complexity of (space) cache encoding
void SymCache::CalcFeasiblePreds(std::map<MemOp, std::vector<MemOp>> &memOpToPreds, std::vector<MemOp> windowOps,
                                 std::map<std::string, std::vector<std::string>> windowHBMap){
    for (int index = 1; index < windowOps.size(); ++index) {
        MemOp op = windowOps[index];
        std::string opID = op.InstID;
        std::vector<MemOp> potenPreds = windowOps;
        //Erase itself
        potenPreds.erase (potenPreds.begin()+index);
        std::set<MemOp> potenPredsSet;
        for (auto memOp : windowOps) {
            potenPredsSet.insert(memOp);
        }
        //Erase itself
        potenPredsSet.erase(op);
        if (windowHBMap.count(opID)) {
            for (int pi = 0; pi < potenPreds.size(); ++pi) {
                std::string piID = potenPreds[pi].InstID;
                if (std::find(windowHBMap[opID].begin(), windowHBMap[opID].end(), piID) != windowHBMap[opID].end()) {
                    LLVM_DEBUG(dbgs() << "Found HB while building formula AGAIN1!\n");
                    potenPredsSet.erase(potenPreds[pi]);
                }
            }
        }

        for (int pi = 0; pi < potenPreds.size()-1; ++pi) {
            std::string piID = potenPreds[pi].InstID;
            for (int pj = pi+1; pj < potenPreds.size(); ++pj) {
                std::string pjID = potenPreds[pj].InstID;
                if (std::find(windowHBMap[piID].begin(), windowHBMap[piID].end(), pjID) != windowHBMap[piID].end()
                && std::find(windowHBMap[pjID].begin(), windowHBMap[pjID].end(), opID) != windowHBMap[pjID].end()) {
                    LLVM_DEBUG(dbgs() << "Found HB while building formula AGAIN2!\n");
                    potenPredsSet.erase(potenPreds[pi]);
                }
                if (std::find(windowHBMap[pjID].begin(), windowHBMap[pjID].end(), piID) != windowHBMap[pjID].end()
                && std::find(windowHBMap[piID].begin(), windowHBMap[piID].end(), opID) != windowHBMap[piID].end()) {
                    LLVM_DEBUG(dbgs() << "Found HB while building formula AGAIN2!\n");
                    potenPredsSet.erase(potenPreds[pj]);
                }

            }
        }

        potenPreds = std::vector<MemOp>{potenPredsSet.begin(), potenPredsSet.end()};
        memOpToPreds[op] = potenPreds;
    }
}

void SymCache::SymCacheZ3Check(std::vector<MemOp> windowOps, int windowCounter,
                               std::map<std::string, std::vector<std::string>> windowHBMap){
    using namespace boost;
    context c;
    expr_vector PCs(c);
    std::vector<expr_vector> Ages;
    std::vector<expr_vector> AgesPrime;
    container::flat_set<long long int> windowAddrs;
    std::map<int, long long int> indexToWindowAddr;
    std::map<long long int, int> windowAddrToIndex;
    std::map<std::string, int> instIDToWindowIndex;


    int symbolicOpIndex = -1;
    // STEP 1: BUILD FORMULA VARS, ADDING HB CONSTRAINTS
    for (int i = 0; i < windowOps.size(); ++i) {
        auto currOP = windowOps[i];
        std::string exprName = "Post_" + currOP.InstID;
        PCs.push_back(c.int_const(("PC_"+currOP.InstID).c_str()));
        if (i != 0){
            windowAddrs.insert(windowOps[i].Addr);
            if(currOP.Symbolic) {
                symbolicOpIndex = i;
                for (auto addr : currOP.SymbolicValues) {
                    windowAddrs.insert(addr);
                }
            }
        }
        instIDToWindowIndex[currOP.InstID] = i;
    }
    assert(symbolicOpIndex != -1);



    int windowAddrCounter = 0;
    for (auto addr : windowAddrs) {
        indexToWindowAddr[windowAddrCounter] = addr;
        windowAddrToIndex[addr] = windowAddrCounter;
        windowAddrCounter++;
    }

    for (auto & windowOp : windowOps) {
        std::string exprName = "Post_" + windowOp.InstID;
        expr_vector curr(c);
        for(long long int addr : windowAddrs) {
            std::string hexAddr = (boost::format("0x%x") % addr).str();
            std::string exprAgeName = "age_" + hexAddr + "_" + exprName;
            curr.push_back(c.int_const(exprAgeName.c_str()));
        }
        Ages.push_back(curr);
        expr_vector currPrime(c);
        for(long long int addr : windowAddrs) {
            std::string hexAddr = (boost::format("0x%x") % addr).str();
            std::string exprAgeName = "agePrime_" + hexAddr + "_" + exprName;
            currPrime.push_back(c.int_const(exprAgeName.c_str()));
        }
        AgesPrime.push_back(currPrime);

        LLVM_DEBUG(dbgs() << "Pushing ages : ");
        for(auto age : Ages.back()) {
            LLVM_DEBUG(dbgs() << age.to_string() << " - ");
        }
        LLVM_DEBUG(dbgs() << "\n");
    }

    errs() << "pc size is : " << PCs.size() << " Ages size is " << Ages.size()
    << " Unique addrs size is : " << windowAddrs.size() << " \n";
    ResultOut << "pc size is : " << PCs.size() << " Ages size is " << Ages.size()
    << " Unique addrs size is : " << windowAddrs.size() << " \n";

    // Start solver construction
    solver s(c);
    // First inst in the window should be the first to execute as it's the "Initial" state inst
    s.add(PCs[0] == windowCounter);
    s.add(distinct(PCs));

    expr_vector symbol_vec(c);
    expr symbolVar = c.int_const("symbolicVar");
    for (auto addr : windowOps[symbolicOpIndex].SymbolicValues) {
        expr addrVal = c.int_val((int64_t) addr);
        symbol_vec.push_back((symbolVar == addrVal));
    }
    s.add(mk_or(symbol_vec));

    expr_vector symbol_vecPrime(c);
    expr symbolVarPrime = c.int_const("symbolicVarPrime");
    for (auto addr : windowOps[symbolicOpIndex].SymbolicValues) {
        expr addrVal = c.int_val((int64_t) addr);
        symbol_vecPrime.push_back((symbolVarPrime == addrVal));
    }
    s.add(mk_or(symbol_vecPrime));

    // Prepare for two traces
    s.add(symbolVar != symbolVarPrime);

    for(auto pair : windowHBMap) {
        auto first = pair.first;
        auto second = pair.second;
        ResultOut << first << " Happens before: \t";
        if (!second.empty())
            LLVM_DEBUG(dbgs() << "Adding HB constraint from HB-MAP: \t");
        for (auto si : second) {
            ResultOut << si << '\t';
            if (PCs[instIDToWindowIndex[first]] != PCs[instIDToWindowIndex[si]]){
                expr constraint = PCs[instIDToWindowIndex[first]] < PCs[instIDToWindowIndex[si]];
                s.add(constraint);
                LLVM_DEBUG(dbgs() << (constraint).to_string() << " ");
            }
        }
        if (!second.empty())
            LLVM_DEBUG(dbgs() << "\n");
        ResultOut << "\n";
    }
    LLVM_DEBUG(dbgs() << "Adding PC range constraint : ");
    for (auto PC : PCs) {
        expr constraint = (PC >= windowCounter && PC <= windowCounter+WindowSize);
        LLVM_DEBUG(dbgs() <<  constraint.to_string()<< " ");
        s.add(constraint);
    }
    LLVM_DEBUG(dbgs() << "\n");
    expr_vector inorder(c);
    for (int i = 0; i < PCs.size()-1; i++) {
        inorder.push_back(PCs[i] < PCs[i+1]);
    }
    //errs() << "Not in order : " << to_string(!mk_and(inorder)) << "\n";
    s.add(!mk_and(inorder));

    // STEP 1.5: CHECK IF Z3 CHECK NECESSARY, SKIP IF ALL INORDER ADDR AGES ARE TOO YOUNG TO EVICT
//    bool evictedFlag = false;
//    int thresholdToCheck = int(Model->CacheAssoc) - windowAddrs.size();
//    for (auto& addr : windowAddrs) {
//        if(addr != 0) {
//            assert(Addrs.find(addr) != Addrs.end() && "Cant find accessed Addr!");
//            int accessedAgeIndex = Addrs.find(addr) - Addrs.begin();
//            if (this->InOrderAges[windowCounter][accessedAgeIndex].second >= thresholdToCheck) {
//                //            std::cout << "Initial age is : " << this->InOrderAges[windowCounter][ageCounter].second << " threshold : "
//                //                      << thresholdToCheck << "\n";
//                evictedFlag = true;
//            }
//        }
//    }
//
//    if (!evictedFlag) {
//        errs() << "All ages are too young to evict even if ooe, so pass on to the next round! \n";
//        ResultOut << "All ages are too young to evict even if ooe, so pass on to the next round! \n";
//        Ages = {};
//        windowCounter++;
//        return;
//    }


    // STEP 2: SET THE INITIAL AGES IN THE CACHE STATES
    LLVM_DEBUG(dbgs()  << "Window Size is : " << this->WindowSize << " windowCounter is : " << windowCounter << "\n");
    LLVM_DEBUG(dbgs()  << "Setting all initial ages to -1 or from the store ages: \n");
    int ageCounter = 0;
    for (expr age : Ages[0]) {
        long long int addr = indexToWindowAddr[ageCounter];
        if(addr != 0) {
            assert(Addrs.find(addr) != Addrs.end() && "Cant find accessed Addr!");
            int accessedAgeIndex = Addrs.find(addr) - Addrs.begin();
            expr initAgeExpr = (age == this->InOrderAges[windowCounter][accessedAgeIndex].second);
            LLVM_DEBUG(dbgs()  << " " << initAgeExpr.to_string() << "\n");
            s.add(initAgeExpr);
        }
        ++ageCounter;
    }

    ageCounter = 0;
    for (expr age : AgesPrime[0]) {
        long long int addr = indexToWindowAddr[ageCounter];
        if(addr != 0) {
            assert(Addrs.find(addr) != Addrs.end() && "Cant find accessed Addr!");
            int accessedAgeIndex = Addrs.find(addr) - Addrs.begin();
            expr initAgeExpr = (age == this->InOrderAges[windowCounter][accessedAgeIndex].second);
            LLVM_DEBUG(dbgs()  << " " << initAgeExpr.to_string() << "\n");
            s.add(initAgeExpr);
        }
        ++ageCounter;
    }

    // STEP 3: GET THE FEASIBLE PREDECESSORS FOR EACH MEM OP
    // Map to store the feasible preds from the happens before relations.
    std::map<MemOp, std::vector<MemOp>> memOpToPreds;
    CalcFeasiblePreds(memOpToPreds, windowOps, windowHBMap);

    for(auto & memOpToPred : memOpToPreds)
    {
        MemOp op = memOpToPred.first;
        std::vector<MemOp> preds = memOpToPred.second;
        if (preds.empty()) continue;
        LLVM_DEBUG(dbgs() << op.InstID << " feasible preds are: ");
        for (auto pred : preds) {
            LLVM_DEBUG(dbgs() << pred.InstID << " ");
        }
        LLVM_DEBUG(dbgs() << "\n");
    }

    // STEP 4: Encode cache states
    // Starting from the second inst in the window and encode
    for (int index = 1; index < windowOps.size(); ++index) {
        MemOp op = windowOps[index];
        std::string opID = op.InstID;
        std::set<int> accessedAgeIndexSet;
        expr_vector accessedAgesExpr(c);
        expr_vector accessedAgesExprPrime(c);

        LLVM_DEBUG(dbgs() << "InstID : " << opID << " Inorder PC: " << op.InOrderPC << " ~ Index is : " << index << "\n");
        if (windowOps[symbolicOpIndex].InstID != opID) {
            long long int accessedAddr = op.Addr;
            assert(windowAddrs.find(accessedAddr) != windowAddrs.end() && "Cant find accessed ADDR in newVecAddr!");
            int accessedAgeIndex = windowAddrs.find(accessedAddr) - windowAddrs.begin();
            accessedAgeIndexSet.insert(accessedAgeIndex);
            LLVM_DEBUG(dbgs() << "Accessed addr: " << (boost::format("0x%x") % accessedAddr).str() << " Accessed age index: " << accessedAgeIndex << "\n");
            expr age_after = (Ages[index][accessedAgeIndex] == 0);
            expr age_afterPrime = (AgesPrime[index][accessedAgeIndex] == 0);
            LLVM_DEBUG(dbgs() << "Accessed addr is age is 0:  " << age_after.to_string()  << "\n");
            s.add(age_after);
            s.add(age_afterPrime);
        }
        else {
            // Symbolic values encoding
            for (auto accessedAddr : op.SymbolicValues) {
                assert(windowAddrs.find(accessedAddr) != windowAddrs.end() && "Cant find accessed ADDR in newVecAddr!");
                int accessedAgeIndex = windowAddrs.find(accessedAddr) - windowAddrs.begin();
                LLVM_DEBUG(dbgs() << "Accessed addr: " << (boost::format("0x%x") % accessedAddr).str() << " Accessed age index: " << accessedAgeIndex << "\n");
                expr age_after = (Ages[index][accessedAgeIndex] == 0);
                expr age_afterPrime = (AgesPrime[index][accessedAgeIndex] == 0);
                expr addrVal = c.int_val((int64_t) accessedAddr);
//                accessedAgesExpr.push_back(implies(symbolVar == addrVal, age_after));
//                accessedAgesExprPrime.push_back(implies(symbolVarPrime == addrVal, age_afterPrime));
                accessedAgesExpr.push_back(symbolVar == addrVal and age_after);
                accessedAgesExprPrime.push_back(symbolVarPrime == addrVal and age_afterPrime);
                accessedAgeIndexSet.insert(accessedAgeIndex);
                // accessedAgesExpr.push_back(age_after);
            }
            // At least one of the symbol value is true
            s.add(mk_or(accessedAgesExpr));
            s.add(mk_or(accessedAgesExprPrime));
        }

        // Encode its own cache states from feasible predecessors
        std::vector<MemOp> preds = memOpToPreds[op];
        expr_vector imPred_constraint(c);

        // Impose immediate precedecessors constraints
        for (const auto& pred : preds) {
            expr PC_constraint = (PCs[index] == (PCs[instIDToWindowIndex[pred.InstID]] + 1));
            imPred_constraint.push_back(PC_constraint);
        }
        // Each op should only have one predecessor
        s.add(mk_or(imPred_constraint));

        assert(!preds.empty() && "Predecessor(s) should be at least one!");
        assert(accessedAgeIndexSet.size() >= 1 && "At least one accessed index at this point!");
        int accessedAgeIndex = *accessedAgeIndexSet.begin();
        for (const auto& pred : preds) {
            assert(pred.InstID != opID && "Predecessor should not be itself!");
            int predIndex = instIDToWindowIndex[pred.InstID];
            expr PC_constraint = (PCs[index] == (PCs[instIDToWindowIndex[pred.InstID]] + 1));
            // Case 1: pred is normal value and curr is normal value
            if (accessedAgeIndexSet.size() == 1 && pred.InstID != windowOps[symbolicOpIndex].InstID) {
                for (int currIndex = 0; currIndex < windowAddrs.size(); ++currIndex) {
                    if (currIndex == accessedAgeIndex) continue;
                    expr ages_after_incre = (Ages[index][currIndex] == Ages[predIndex][currIndex] + 1);
                    expr ages_after_same = (Ages[index][currIndex] == Ages[predIndex][currIndex]);
                    s.add(implies(Ages[predIndex][currIndex] == -1
                                  and PC_constraint, ages_after_same));
                    s.add(implies(Ages[predIndex][currIndex] >= Ages[predIndex][accessedAgeIndex]
                                  and Ages[predIndex][accessedAgeIndex] != -1
                                  and PC_constraint, ages_after_same));
                    s.add(implies(Ages[predIndex][currIndex] == int(Model->CacheAssoc)
                                  and PC_constraint, ages_after_same));

                    // Conditions that the age will increase by one
                    s.add(implies(Ages[predIndex][currIndex] > Ages[predIndex][accessedAgeIndex]
                                  and Ages[predIndex][accessedAgeIndex] == -1
                                  and Ages[predIndex][currIndex] < int(Model->CacheAssoc)
                                  and PC_constraint, ages_after_incre));
                    s.add(implies(Ages[predIndex][currIndex] < Ages[predIndex][accessedAgeIndex]
                                  and Ages[predIndex][accessedAgeIndex] != -1
                                  and Ages[predIndex][currIndex] != -1
                                  and PC_constraint, ages_after_incre));


                    expr ages_after_increPrime = (AgesPrime[index][currIndex] == AgesPrime[predIndex][currIndex] + 1);
                    expr ages_after_samePrime = (AgesPrime[index][currIndex] == AgesPrime[predIndex][currIndex]);
                    s.add(implies(AgesPrime[predIndex][currIndex] == -1
                                  and PC_constraint, ages_after_samePrime));
                    s.add(implies(AgesPrime[predIndex][currIndex] >= AgesPrime[predIndex][accessedAgeIndex]
                                  and AgesPrime[predIndex][accessedAgeIndex] != -1
                                  and PC_constraint, ages_after_samePrime));
                    s.add(implies(AgesPrime[predIndex][currIndex] == int(Model->CacheAssoc)
                                  and PC_constraint, ages_after_samePrime));

                    // Conditions that the age will increase by one
                    s.add(implies(AgesPrime[predIndex][currIndex] > AgesPrime[predIndex][accessedAgeIndex]
                                  and AgesPrime[predIndex][accessedAgeIndex] == -1
                                  and AgesPrime[predIndex][currIndex] < int(Model->CacheAssoc)
                                  and PC_constraint, ages_after_increPrime));
                    s.add(implies(AgesPrime[predIndex][currIndex] < AgesPrime[predIndex][accessedAgeIndex]
                                  and AgesPrime[predIndex][accessedAgeIndex] != -1
                                  and AgesPrime[predIndex][currIndex] != -1
                                  and PC_constraint, ages_after_increPrime));
                }
            }
            else if (pred.InstID == windowOps[symbolicOpIndex].InstID) {
            // Case 2: pred is symbolic value and curr is normal value
                assert(accessedAgeIndexSet.size() == 1 && "Pred is symbolic and current must be normal!");
                for (int currIndex = 0; currIndex < windowAddrs.size(); ++currIndex) {
                    if (currIndex == accessedAgeIndex) continue;
                    expr ages_after_incre = (Ages[index][currIndex] == Ages[predIndex][currIndex] + 1);
                    expr ages_after_same = (Ages[index][currIndex] == Ages[predIndex][currIndex]);
//                        s.add(implies(predAddrVal == symbolVar, ages_after_incre or ages_after_same));

                    s.add(implies(Ages[predIndex][currIndex] == -1
                                  and PC_constraint, ages_after_same));
                    s.add(implies(Ages[predIndex][currIndex] >= Ages[predIndex][accessedAgeIndex]
                                  and Ages[predIndex][accessedAgeIndex] != -1
                                  and PC_constraint, ages_after_same));
                    s.add(implies(Ages[predIndex][currIndex] == int(Model->CacheAssoc)
                                  and PC_constraint, ages_after_same));

                    // Conditions that the age will increase by one
                    s.add(implies(Ages[predIndex][currIndex] > Ages[predIndex][accessedAgeIndex]
                                  and Ages[predIndex][accessedAgeIndex] == -1
                                  and Ages[predIndex][currIndex] < int(Model->CacheAssoc)
                                  and PC_constraint, ages_after_incre));
                    s.add(implies(Ages[predIndex][currIndex] < Ages[predIndex][accessedAgeIndex]
                                  and Ages[predIndex][accessedAgeIndex] != -1
                                  and Ages[predIndex][currIndex] != -1
                                  and PC_constraint, ages_after_incre));


                    expr ages_after_increPrime = (AgesPrime[index][currIndex] == AgesPrime[predIndex][currIndex] + 1);
                    expr ages_after_samePrime = (AgesPrime[index][currIndex] == AgesPrime[predIndex][currIndex]);
//                        s.add(implies(predAddrVal == symbolVar, ages_after_incre or ages_after_same));

                    s.add(implies(AgesPrime[predIndex][currIndex] == -1
                                  and PC_constraint, ages_after_samePrime));
                    s.add(implies(AgesPrime[predIndex][currIndex] >= AgesPrime[predIndex][accessedAgeIndex]
                                  and AgesPrime[predIndex][accessedAgeIndex] != -1
                                  and PC_constraint, ages_after_samePrime));
                    s.add(implies(AgesPrime[predIndex][currIndex] == int(Model->CacheAssoc)
                                  and PC_constraint, ages_after_samePrime));

                    // Conditions that the age will increase by one
                    s.add(implies(AgesPrime[predIndex][currIndex] > AgesPrime[predIndex][accessedAgeIndex]
                                  and AgesPrime[predIndex][accessedAgeIndex] == -1
                                  and AgesPrime[predIndex][currIndex] < int(Model->CacheAssoc)
                                  and PC_constraint, ages_after_increPrime));
                    s.add(implies(AgesPrime[predIndex][currIndex] < AgesPrime[predIndex][accessedAgeIndex]
                                  and AgesPrime[predIndex][accessedAgeIndex] != -1
                                  and AgesPrime[predIndex][currIndex] != -1
                                  and PC_constraint, ages_after_increPrime));

                }
            }
            else if (pred.InstID != windowOps[symbolicOpIndex].InstID and accessedAgeIndexSet.size() > 1) {
            // Case 3: pred is normal value and curr is symbolic value
                for (int currIndex = 0; currIndex < windowAddrs.size(); ++currIndex) {
                    expr ages_after_incre = (Ages[index][currIndex] == Ages[predIndex][currIndex] + 1);
                    expr ages_after_same = (Ages[index][currIndex] == Ages[predIndex][currIndex]);
                    if (accessedAgeIndexSet.count(currIndex)) {
                        long long int currAddr = indexToWindowAddr[currIndex];
                        expr currVal = c.int_val((int64_t) currAddr);
                        for (auto predAddr : windowOps[symbolicOpIndex].SymbolicValues) {
                            if (predAddr == currAddr) continue;
                            expr predAddrVal = c.int_val((int64_t) predAddr);
                            int accessedAgePredIndex = windowAddrToIndex[predAddr];
                            s.add(implies(Ages[predIndex][currIndex] == -1 and PC_constraint
                                          and currVal != symbolVar and predAddrVal == symbolVar, ages_after_same));
                            s.add(implies(Ages[predIndex][currIndex] >= Ages[predIndex][accessedAgePredIndex]
                                          and Ages[predIndex][accessedAgePredIndex] != -1
                                          and PC_constraint and currVal != symbolVar and predAddrVal == symbolVar, ages_after_same));
                            s.add(implies(Ages[predIndex][currIndex] == int(Model->CacheAssoc)
                                          and PC_constraint and currVal != symbolVar and predAddrVal == symbolVar, ages_after_same));

                            // Conditions that the age will increase by one
                            s.add(implies(Ages[predIndex][currIndex] > Ages[predIndex][accessedAgePredIndex]
                                          and Ages[predIndex][accessedAgePredIndex] == -1
                                          and Ages[predIndex][currIndex] < int(Model->CacheAssoc) and PC_constraint
                                          and currVal != symbolVar and predAddrVal == symbolVar, ages_after_incre));
                            s.add(implies(Ages[predIndex][currIndex] < Ages[predIndex][accessedAgePredIndex]
                                          and Ages[predIndex][accessedAgePredIndex] != -1
                                          and Ages[predIndex][currIndex] != -1 and PC_constraint
                                          and currVal != symbolVar and predAddrVal == symbolVar, ages_after_incre));
                        }

                    }
                    else {
                        for (auto predAddr : windowOps[symbolicOpIndex].SymbolicValues) {
                            long long int currAddr = *(windowAddrs.begin() + currIndex);
                            assert(currAddr != predAddr);
                            expr predAddrVal = c.int_val((int64_t) predAddr);
                            int accessedAgePredIndex = windowAddrToIndex[predAddr];
                            s.add(implies(Ages[predIndex][currIndex] == -1
                                          and PC_constraint and symbolVar == predAddrVal, ages_after_same));
                            s.add(implies(Ages[predIndex][currIndex] >= Ages[predIndex][accessedAgePredIndex]
                                          and Ages[predIndex][accessedAgePredIndex] != -1
                                          and PC_constraint and symbolVar == predAddrVal, ages_after_same));
                            s.add(implies(Ages[predIndex][currIndex] == int(Model->CacheAssoc)
                                          and PC_constraint and symbolVar == predAddrVal, ages_after_same));

                            // Conditions that the age will increase by one
                            s.add(implies(Ages[predIndex][currIndex] > Ages[predIndex][accessedAgePredIndex]
                                          and Ages[predIndex][accessedAgePredIndex] == -1
                                          and Ages[predIndex][currIndex] < int(Model->CacheAssoc)
                                          and PC_constraint and symbolVar == predAddrVal, ages_after_incre));
                            s.add(implies(Ages[predIndex][currIndex] < Ages[predIndex][accessedAgePredIndex]
                                          and Ages[predIndex][accessedAgePredIndex] != -1
                                          and Ages[predIndex][currIndex] != -1
                                          and PC_constraint and symbolVar == predAddrVal, ages_after_incre));
                        }
                    }

                    expr ages_after_increPrime = (AgesPrime[index][currIndex] == AgesPrime[predIndex][currIndex] + 1);
                    expr ages_after_samePrime = (AgesPrime[index][currIndex] == AgesPrime[predIndex][currIndex]);
                    if (accessedAgeIndexSet.count(currIndex)) {
                        long long int currAddr = *(windowAddrs.begin() + currIndex);
                        expr currVal = c.int_val((int64_t) currAddr);
                        for (auto predAddr : windowOps[symbolicOpIndex].SymbolicValues) {
                            if (predAddr == currAddr) continue;
                            expr predAddrVal = c.int_val((int64_t) predAddr);
                            int accessedAgePredIndex = windowAddrToIndex[predAddr];
                            s.add(implies(AgesPrime[predIndex][currIndex] == -1
                                          and PC_constraint and currVal != symbolVarPrime and predAddrVal == symbolVarPrime, ages_after_samePrime));
                            s.add(implies(AgesPrime[predIndex][currIndex] >= AgesPrime[predIndex][accessedAgePredIndex]
                                          and AgesPrime[predIndex][accessedAgePredIndex] != -1
                                          and PC_constraint and currVal != symbolVarPrime and predAddrVal == symbolVarPrime, ages_after_samePrime));
                            s.add(implies(AgesPrime[predIndex][currIndex] == int(Model->CacheAssoc)
                                          and PC_constraint and currVal != symbolVarPrime and predAddrVal == symbolVarPrime, ages_after_samePrime));

                            // Conditions that the age will increase by one
                            s.add(implies(AgesPrime[predIndex][currIndex] > AgesPrime[predIndex][accessedAgePredIndex]
                                          and AgesPrime[predIndex][accessedAgePredIndex] == -1
                                          and AgesPrime[predIndex][currIndex] < int(Model->CacheAssoc)
                                          and PC_constraint and currVal != symbolVarPrime and predAddrVal == symbolVarPrime,  ages_after_increPrime));
                            s.add(implies(AgesPrime[predIndex][currIndex] < AgesPrime[predIndex][accessedAgePredIndex]
                                          and AgesPrime[predIndex][accessedAgePredIndex] != -1
                                          and AgesPrime[predIndex][currIndex] != -1
                                          and PC_constraint and currVal != symbolVarPrime and predAddrVal == symbolVarPrime, ages_after_increPrime));
                        }

                    }
                    else {
                        for (auto predAddr : windowOps[symbolicOpIndex].SymbolicValues) {
                            long long int currAddr = *(windowAddrs.begin() + currIndex);
                            assert(currAddr != predAddr);
                            expr predAddrVal = c.int_val((int64_t) predAddr);
                            int accessedAgePredIndex = windowAddrToIndex[predAddr];
                            s.add(implies(AgesPrime[predIndex][currIndex] == -1
                                          and PC_constraint and symbolVarPrime == predAddrVal, ages_after_samePrime));
                            s.add(implies(AgesPrime[predIndex][currIndex] >= AgesPrime[predIndex][accessedAgePredIndex]
                                          and AgesPrime[predIndex][accessedAgePredIndex] != -1
                                          and PC_constraint and symbolVarPrime == predAddrVal, ages_after_samePrime));
                            s.add(implies(AgesPrime[predIndex][currIndex] == int(Model->CacheAssoc)
                                          and PC_constraint and symbolVarPrime == predAddrVal, ages_after_samePrime));

                            // Conditions that the age will increase by one
                            s.add(implies(AgesPrime[predIndex][currIndex] > AgesPrime[predIndex][accessedAgePredIndex]
                                          and AgesPrime[predIndex][accessedAgePredIndex] == -1
                                          and AgesPrime[predIndex][currIndex] < int(Model->CacheAssoc)
                                          and PC_constraint and symbolVarPrime == predAddrVal, ages_after_increPrime));
                            s.add(implies(AgesPrime[predIndex][currIndex] < AgesPrime[predIndex][accessedAgePredIndex]
                                          and AgesPrime[predIndex][accessedAgePredIndex] != -1
                                          and AgesPrime[predIndex][currIndex] != -1
                                          and PC_constraint and symbolVarPrime == predAddrVal, ages_after_increPrime));
                        }
                    }
                }
            }
            else {
                assert(false && "Should not exist fourth case of encoding!!!");
            }


        }

    }

    int i;
    // only check one instruction in a sliding window unless it's the first time.
    if (windowCounter == 0)
        i = 1;
    else
        i = windowOps.size()-1;
    for (; i < windowOps.size(); i++) {
        MemOp memOp = windowOps[i];
        s.push();

        // STEP 4: CHECK IF CURRENT QUERY IS UNNECESSARY SKIP IF CURRENT MEMOP'S INORDER AGE IS TOO YOUNG.
        if (memOp.InstID != windowOps[symbolicOpIndex].InstID) {
            int thresholdToCheck = int(Model->CacheAssoc) - windowAddrs.size();
            //            std::cout << "Initial age : " << this->InOrderAges[windowCounter][accessedAgeIndex].second << " threshold : " << thresholdToCheck << "\t SKIP checking! Targeted addr's initial age is too young\n";
            int accessedAgeInorderIndex = Addrs.find(memOp.Addr) - Addrs.begin();
            if (this->InOrderAges[windowCounter][accessedAgeInorderIndex].second < thresholdToCheck) {

                errs() << "\t SKIP checking! Targeted addr's initial age is too young" << memOp.InstID << "\n";
                ResultOut << "SKIP checking! Targeted addr's initial age is too young \nInitial age : " << this->InOrderAges[windowCounter][accessedAgeInorderIndex].second << " threshold : " << thresholdToCheck << "\t SKIP checking! Targeted addr's initial age is too young\n";
                LLVM_DEBUG( dbgs() << "Solver pop point \n");
                s.pop();
                continue;
            }
        }
        else {
            int thresholdToCheck = int(Model->CacheAssoc) - windowAddrs.size();
            bool skip = true;
            for (auto addr : memOp.SymbolicValues) {
                int accessedAgeInorderIndex = Addrs.find(addr) - Addrs.begin();
                if (this->InOrderAges[windowCounter][accessedAgeInorderIndex].second >= thresholdToCheck) {
                    skip = false;
                    break;
                }
            }
            if (skip) {
                errs() << "\t SKIP checking! Targeted addr's initial age is too young: " << memOp.InstID << "\n";
                ResultOut << "SKIP checking! Targeted addr's initial age is too young\n";
                LLVM_DEBUG( dbgs() << "Solver pop point \n");
                s.pop();
                continue;
            }

        }

        // STEP 5: CONSTRUCT LEAKAGE QUERY
            expr_vector delta_cache(c);
            int PCIndex = memOp.InOrderPC+1-windowCounter;
            if (memOp.InstID != windowOps[symbolicOpIndex].InstID){
                int accessedAgeIndex = windowAddrs.find(memOp.Addr) - windowAddrs.begin();
                for (const auto& pred : memOpToPreds[memOp]) {
                    int predPCIndex = pred.InOrderPC+1-windowCounter;
                    expr delta =  (PCs[PCIndex] == PCs[predPCIndex]+1) and
//                            (((Ages[predPCIndex][accessedAgeIndex] == int(Model->CacheAssoc) and
//                            AgesPrime[predPCIndex][accessedAgeIndex] < int(Model->CacheAssoc))
//                            or ((Ages[predPCIndex][accessedAgeIndex] < int(Model->CacheAssoc) and
//                            AgesPrime[predPCIndex][accessedAgeIndex] == int(Model->CacheAssoc)))));
                                Ages[predPCIndex][accessedAgeIndex] == int(Model->CacheAssoc) and
                                AgesPrime[predPCIndex][accessedAgeIndex] < int(Model->CacheAssoc) and
                                AgesPrime[predPCIndex][accessedAgeIndex] != -1;
                    delta_cache.push_back(delta);
                }
                s.add(mk_or(delta_cache));
            }
            else {
                for (const auto& pred : memOpToPreds[memOp]) {
                    int predPCIndex = pred.InOrderPC+1-windowCounter;
                    for (auto addr : memOp.SymbolicValues){
                        expr addrVal = c.int_val((int64_t) addr);
                        int accessedAgeIndex = windowAddrs.find(addr) - windowAddrs.begin();
                        for (auto addrPrime : memOp.SymbolicValues) {
                            if (addr == addrPrime) continue;
                            expr addrValPrime = c.int_val((int64_t) addrPrime);
                            int accessedAgeIndexPrime = windowAddrs.find(addrPrime) - windowAddrs.begin();
                            expr delta =  (PCs[PCIndex] == PCs[predPCIndex]+1) and
                                    symbolVar == addrVal and
                                    symbolVarPrime == addrValPrime and
//                                    (((Ages[predPCIndex][accessedAgeIndex] == int(Model->CacheAssoc) and
//                                    AgesPrime[predPCIndex][accessedAgeIndexPrime] < int(Model->CacheAssoc))
//                                    or ((Ages[predPCIndex][accessedAgeIndex] < int(Model->CacheAssoc) and
//                                    AgesPrime[predPCIndex][accessedAgeIndexPrime] == int(Model->CacheAssoc)))));
                                    Ages[predPCIndex][accessedAgeIndex] == int(Model->CacheAssoc) and
                                    AgesPrime[predPCIndex][accessedAgeIndexPrime] < int(Model->CacheAssoc) and
                                    AgesPrime[predPCIndex][accessedAgeIndexPrime] != -1;
                                delta_cache.push_back(delta);
                        }

                    }
                }
                s.add(atleast(delta_cache, true));
            }

        // STEP 5 : CHECK IF THERE IS AT LEAST ONE LEAKAGE

        errs() << "\nStart Z3 Checking:" << memOp.InstID << "\n";
        ResultOut << "\nStart Z3 Checking:" << memOp.InstID << "\n";

        clock_t timeBegin = clock();
        params p(c);
        p.set(":timeout", static_cast<unsigned>(1000*60*20)); // in milliseconds
        s.set(p);
        switch(s.check()) {
            case unsat:
                errs() << "UNSAT\n";
                ResultOut << "UNSAT\n";
                break;
                case sat: {
                    //errs() << "May miss expression is " << to_string(delta_cache) << "\n";
                    model m = s.get_model();
                    ResultOut << "May miss expression is " << to_string(delta_cache) << "\n";


                    std::vector<int> order(PCs.size(), 0);
                    for (int i = 0; i < PCs.size(); ++i) {
                        expr result = m.eval(PCs[i]);
                        int re = result.get_numeral_int();
                        errs() << PCs[i].to_string() << '\t' << re << "\n";
                        ResultOut << PCs[i].to_string() << '\t' << re << "\n";
                        order[re - windowCounter] = i;
                    }

                    if (std::is_sorted(order.begin(), order.end())) {
                        ResultOut << "InOrder-SAT!";
                        errs() << "InOrder-SAT!\n";
                    }
                    errs() << "SAT\n";
                    long long int symbol = m.eval(symbolVar).get_numeral_int64();
                    errs() << symbol << "\n";
                    errs() << "Symbolic value is : " << (boost::format("0x%x") % symbol).str() << "\n";
                    errs() << "Extra miss could occur at : Ln,Col: " << memOp.DebugLoc << "\n";
                    errs() << PCs[0].to_string() + " to " + PCs[PCs.size()-1].to_string() + " values: \n";
                    ResultOut << "SAT\n";
                    ResultOut << "Symbolic value is : " << (boost::format("0x%x") % symbol).str() << "\n";
                    ResultOut << "Extra miss could occur at : Ln,Col: " << memOp.DebugLoc << " MemOp ID: " << memOp.InstID << "\n";
                    ResultOut << PCs[0].to_string() + " to " + PCs[PCs.size()-1].to_string() + " values: \n";
                    ResultOut << "\n";
                    errs() << "\n";
                    for(int j = 0; j < windowAddrs.size(); ++j) {
                        errs() << Ages[0][j].to_string() << " : ";
                        ResultOut << Ages[0][j].to_string() << " : ";
                        for(int i = 0; i < PCs.size(); ++i) {
                            errs() << m.eval(Ages[order[i]][j]).to_string() << " | ";
                            ResultOut << m.eval(Ages[order[i]][j]).to_string() << " | ";
                        }
                        ResultOut << "\n";
                        errs() << "\n";
                    }

                    long long int symbolPrime = m.eval(symbolVarPrime).get_numeral_int64();
                    errs() << symbolPrime << "\n";
                    errs() << "Symbolic Prime value is : " << (boost::format("0x%x") % symbolPrime).str() << "\n";
                    ResultOut << "Symbolic Prime value is : " << (boost::format("0x%x") % symbolPrime).str() << "\n";

                    std::vector<int> orderPrime(PCs.size(), 0);
                    for (int i = 0; i < PCs.size(); ++i) {
                        expr result = m.eval(PCs[i]);
                        int re = result.get_numeral_int();
                        errs() << PCs[i].to_string() << '\t' << re << "\n";
                        ResultOut << PCs[i].to_string() << '\t' << re << "\n";
                        orderPrime[re-windowCounter] = i;
                    }
                    ResultOut << "\n";
                    errs() << "\n";
                    for(int j = 0; j < windowAddrs.size(); ++j) {
                        errs() << AgesPrime[0][j].to_string() << " : ";
                        ResultOut << AgesPrime[0][j].to_string() << " : ";
                        for(int i = 0; i < PCs.size(); ++i) {
                            errs() << m.eval(AgesPrime[orderPrime[i]][j]).to_string() << " | ";
                            ResultOut << m.eval(AgesPrime[orderPrime[i]][j]).to_string() << " | ";
                        }
                        ResultOut << "\n";
                        errs() << "\n";
                    }
                }
                break;
                case unknown:
                    ResultOut << "unknown / timeout\n";
                    errs() << "unknown / timeout\n";
                    break;
        }
        s.pop();
        clock_t timeEnd = clock();
        double elapsed_secs = double(timeEnd - timeBegin) / CLOCKS_PER_SEC;
        errs() << "Current Query Time Elapsed: " << to_string(elapsed_secs) << "\n";
        ResultOut << "Current Query Time Elapsed: " << to_string(elapsed_secs) << "\n";
    }

}

}
