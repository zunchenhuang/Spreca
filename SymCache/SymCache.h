//
// Created by phil on 9/13/21.
//

#ifndef PRECTIVEANALYSIS_SYMCACHE_H
#define PRECTIVEANALYSIS_SYMCACHE_H

#include "llvm/ADT/SmallSet.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Pass.h"
#include "llvm/IR/InstVisitor.h"
#include "llvm/IR/Dominators.h"
#include "llvm/Support/Debug.h"
#include "llvm/Analysis/PostDominators.h"
#include "llvm/IR/ValueMap.h"
#include "llvm/IR/Value.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/ADT/PostOrderIterator.h"
#include "llvm/IR/CFG.h"
#include <utility>
#include <vector>
#include <iostream>
#include "z3++.h"
#include "z3_api.h"
#include "../Analysis/CacheModel.h"
#include <boost/container/flat_set.hpp>
#include <boost/format.hpp>
#include <boost/graph/adjacency_matrix.hpp>
#include <boost/graph/transitive_closure.hpp>
#include <boost/graph/graphviz.hpp>
#include <boost/algorithm/string/find.hpp>

using namespace z3;
using namespace llvm;

namespace symc {

class SymCache {
private:
    unsigned CacheSize;
    unsigned CacheLineSize;
    unsigned CacheAssoc;
    std::string ResultFilePath;
    CacheModel *Model;
    std::string MemoryModel;
    boost::container::flat_set<long long int> Addrs;
    std::map<int, long long int> IndexToAddr;
    std::vector<bool> HotMisses;
    std::vector<bool> ColdMisses;
    std::vector<std::vector<std::pair<long long int, int>>> InOrderAges;

    int WindowSize;
    // key should schedule before its values
    std::map<std::string, std::vector<std::string>> HBMap;
    std::map<std::string, int> InstIDToIndex;
    std::ofstream ResultOut;

    // For transitive closures building
    typedef boost::property<boost::vertex_name_t, const char *> Name;
    typedef boost::property<boost::vertex_index_t, std::size_t, Name> Index;
    typedef boost::adjacency_list<boost::listS, boost::listS, boost::directedS, Index> Inst_Graph;
    typedef boost::graph_traits<Inst_Graph>::vertex_descriptor vertex_t;

public:

    SymCache(unsigned cacheSize, unsigned cacheLineSize, unsigned cacheAssoc, std::string ResultFilePath,
                std::string memoryModel, int windowSize)
                : CacheSize(cacheSize), CacheLineSize(cacheLineSize),  CacheAssoc(cacheAssoc), ResultFilePath(ResultFilePath)
                , MemoryModel(memoryModel), WindowSize(windowSize){
        Model = new CacheModel(CacheSize, CacheLineSize, CacheAssoc, ResultFilePath);
        Model->Scan();
        ResultFileGen();

        ResultOut << "Cache Setting:\t\t\t" << "\n\tCache Size:\t\t\t" << CacheSize
        << "\n\tCache Assoc:\t\t" << Model->CacheAssoc << "\n\tCache Line Size:\t" << Model->CacheLineSize
        << "\n\tCache Set Number:\t" << Model->CacheSetNum << "\n\tCache Offset Bits:\t" << Model->CacheOffsetBits
        << "\n\tCache Index Bits:\t" << Model->CacheIndexBits << "\n\tCache Tag Bits:\t\t"
        << Model->CacheTagBits << "\n";
    };

    void ResultFileGen();
    void LogTime(std::string time) {
        ResultOut << "Total time in seconds : " << time << "\n";
        ResultOut.close();
    }
    void CacheInOrderSimu();
    void CalcFeasiblePreds(std::map<MemOp, std::vector<MemOp>> &, std::vector<MemOp>,
                           std::map<std::string, std::vector<std::string>>);
    void CachePredictiveAnalysis(int);
    void SymCacheZ3Check(std::vector<MemOp>, int, std::map<std::string, std::vector<std::string>>);
};

}
#endif //PRECTIVEANALYSIS_SYMCACHE_H
