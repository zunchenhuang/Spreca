// Control Dependence and Data Dependence
// Control Dependence: computed from PDT
// Data Dependence: using llvm own DA pass

#include "llvm/Analysis/DependenceAnalysis.h"
#include "llvm/Analysis/DominanceFrontier.h"
#include "llvm/Analysis/PostDominators.h"
#include "llvm/Analysis/CFG.h"
#include "llvm/Analysis/MemorySSA.h"
#include "llvm/Analysis/MemoryDependenceAnalysis.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstVisitor.h"
#include "llvm/IR/Constant.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Dominators.h"
#include "llvm/Pass.h"
#include "llvm/Support/ErrorHandling.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/ADT/SmallPtrSet.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/DerivedTypes.h"
#include <llvm/IR/DebugInfoMetadata.h>

#ifndef PRECTIVEANALYSIS_DEPENDENCEANALYSIS_H
#define PRECTIVEANALYSIS_DEPENDENCEANALYSIS_H

using namespace llvm;

namespace symc{

class SchedulingConstraints {
private:
    Function &F;
    PostDominatorTree &PDT;
    DependenceInfo &DI;
    MemorySSA &MSSA;
    std::map<BasicBlock*, SmallVector<BasicBlock*, 8>> ControlDepMap;
    std::map<BasicBlock*, SmallVector<BasicBlock*, 8>> PostDomFrontierMap;

    std::map<Instruction*, SmallVector<Instruction*, 8>> MemoryControlDepMap;

    std::map<Instruction*, Instruction*> MemoryDataDepMap;
    std::map<Instruction*, SmallVector<Instruction*, 8>> MemorySSADepMap;
    std::map<Instruction*, SmallVector<Instruction*, 8>> MemoryDefUseDepMap;

    DomTreeNode *PDTreeRootNode;

public:
    SchedulingConstraints(Function &f, PostDominatorTree &pdt, DependenceInfo &di, MemorySSA &mssa) : F(f), PDT(pdt), DI(di), MSSA(mssa){

    }

    void PostOrderTraversePDT(DomTreeNode *node);
    void SetPDTRootNode();
    void CDGWriter();
    void ControlDepBuilder();
    void ControlDepAnalysis();
    void MemoryControlDep();
    void DataDepAnalysis();
    void MemorySSAAnalysis();
    void MemoryDefUseAnalysis();

    std::map<Instruction*, SmallVector<Instruction*, 8>> GetMemoryControlDepMap(){return MemoryControlDepMap;};
    std::map<Instruction*, Instruction*> GetMemoryDataDepMap(){return MemoryDataDepMap;};
    std::map<Instruction*, SmallVector<Instruction*, 8>> GetMemorySSADepMap(){return MemorySSADepMap;};
    std::map<Instruction*, SmallVector<Instruction*, 8>> GetMemoryDefUseDepMap(){return MemoryDefUseDepMap;};

};
}

#endif //PRECTIVEANALYSIS_DEPENDENCEANALYSIS_H
