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
#include "llvm/IR/InstIterator.h"
#include "llvm/Pass.h"
#include "llvm/Support/ErrorHandling.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/ADT/SmallPtrSet.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/DerivedTypes.h"
#include <llvm/IR/DebugInfoMetadata.h>
#include "SchedulingConstraints.h"

#define DEBUG_TYPE "depa"

using namespace llvm;


namespace symc{

void SchedulingConstraints::PostOrderTraversePDT(DomTreeNode *node){
    assert(PDTreeRootNode != nullptr || F.getBasicBlockList().size() == 1);
    if(node->getChildren().empty()) {
        BasicBlock *bb = node->getBlock();
        for (BasicBlock *pred : predecessors(bb)) {
            DomTreeNode *predNode = PDT.getNode(pred);
            if(predNode->getIDom() != node) {
                PostDomFrontierMap[bb].push_back(predNode->getBlock());
            }
        }
        LLVM_DEBUG(dbgs() << "Visit : " << node->getBlock()->front() << "\n");
        return;
    }
    for(DomTreeNode *domTreeNode : node->getChildren()) {
        PostOrderTraversePDT(domTreeNode);
    }

    BasicBlock *bb = node->getBlock();
    for (BasicBlock *pred : predecessors(bb)) {
        DomTreeNode *predNode = PDT.getNode(pred);
        if(predNode->getIDom() != node) {
            PostDomFrontierMap[bb].push_back(predNode->getBlock());
        }
    }
    for (DomTreeNode *child : node->getChildren()) {
        BasicBlock *childBB = child->getBlock();
        for (BasicBlock *childFrontierBB : PostDomFrontierMap[childBB]) {
            DomTreeNode *childFrontierNode = PDT.getNode(childFrontierBB);
            if (childFrontierNode->getIDom() != node) {
                PostDomFrontierMap[bb].push_back(childFrontierNode->getBlock());
            }
        }
    }
    LLVM_DEBUG(dbgs() << "Visit : " << node->getBlock()->front() << "\n");
}

void SchedulingConstraints::SetPDTRootNode() {
    LLVM_DEBUG(dbgs() << PDT.isPostDominator() << "\n ");
    LLVM_DEBUG(dbgs() << F.getName() << "\n");
    for (BasicBlock &bb : F) {
        DomTreeNode *node;
        if(PDT.getNode(&bb))
            node = PDT.getNode(&bb);
        else
            continue;
        assert(node!= nullptr);
        LLVM_DEBUG(dbgs()  << bb.front() << " Level : " << node->getLevel() << "\n");
        if (node->getLevel() == 1) PDTreeRootNode = node;

        SmallVector<BasicBlock*, 8> Result;
        PDT.getDescendants(&bb, Result);
        if (Result.empty()) {
            LLVM_DEBUG(dbgs() << "No BB dominates : " << bb.front() << "\n");
        }
        else {
            for (BasicBlock *bb : Result)
                LLVM_DEBUG(dbgs() << "dominates : " << bb->front() << "\n");
        }
    }
}

void SchedulingConstraints::ControlDepBuilder() {
    assert(!PostDomFrontierMap.empty() || F.getBasicBlockList().size() == 1);
    for (auto item : PostDomFrontierMap) {
        BasicBlock* bb = item.first;
        LLVM_DEBUG(dbgs()  << bb << "\n");
        SmallVector<BasicBlock*, 8> PDFrontier = item.second;
        for(BasicBlock* frontier : PDFrontier) {
            LLVM_DEBUG(dbgs()  << "Adding Froniter " << *frontier << " to " << *bb);
            ControlDepMap[frontier].push_back(bb);
        }
    }
}

void SchedulingConstraints::CDGWriter() {
    assert(!ControlDepMap.empty() || F.getBasicBlockList().size() == 1);
    LLVM_DEBUG(dbgs() << F.getParent()->getModuleIdentifier() << "\n");
    std::string filename = F.getParent()->getModuleIdentifier();
    if(filename.find('/')) {
        filename = filename.substr(filename.find_last_of('/')+1);
        filename = filename.substr(0, filename.size()-3);
    }
    LLVM_DEBUG(dbgs() << filename << "\n");
    std::string dotName =  "dot/"+ filename + "." + F.getName().str() + ".cd.dot";
    std::error_code EC;
    raw_fd_ostream out(dotName, EC);

    assert(!EC.message().empty());
    out << "digraph \"CDG for '" << F.getName().str() << "' function\" {\n";
    out << "\tlabel=\"CDG for '" << F.getName().str() << "' function\";\n\n";
    std::set<BasicBlock*> CDGnodes;
    for (auto item : ControlDepMap) {
        BasicBlock* bb = item.first;
        LLVM_DEBUG(dbgs()  << bb << "\n");
        CDGnodes.insert(bb);
        out << "\tNode" << bb << " [shape=record,label=\"{" << bb->getName();
        for(Instruction& i : *bb) {
            out << i << "\\l";
        }
        out << "}\"];\n";
    }

    for (auto item : ControlDepMap) {
        BasicBlock* bb = item.first;
        SmallVector<BasicBlock*, 8> CDbbs = item.second;
        for(BasicBlock* CDbb : CDbbs) {
            if(!CDGnodes.count((CDbb))) {
                CDGnodes.insert(CDbb);
                out << "\tNode" << CDbb << " [shape=record,label=\"{" << CDbb->getName();
                for(Instruction& i : *CDbb) {
                    out << i << "\\l";
                }
                out << "}\"];\n";
            }
            out << "\tNode" << bb << " -> Node" << CDbb <<";\n";
        }
    }
    out <<"}";
    out.close();
}

void SchedulingConstraints::ControlDepAnalysis(){
    LLVM_DEBUG(dbgs() << "----------BEGIN CONTROL DEPENDENCE ANALYSIS-----------\n");

    SetPDTRootNode();
    PostOrderTraversePDT(PDTreeRootNode);
    ControlDepBuilder();
    MemoryControlDep();
    LLVM_DEBUG(dbgs() << "----------END MEMORY CONTROL DEPENDENCE ANALYSIS-----------\n");


}

void SchedulingConstraints::MemoryControlDep() {
    //         Compute Control Dependency:
    //         Reverse Post Dominator Frontiers Graph to get Control Depedence Graph
    //         Post order traversal of Post Dom Tree to get PostDomFrontier Graph
    //          for each X in a post-order traversal of the post-dominator tree do:
    //          PostDominanceFrontier(X) ← ∅
    //          for each Y ∈ Predecessors(X) do:
    //            if immediatePostDominator(Y) ≠ X:
    //              then PostDominanceFrontier(X) ← PostDominanceFrontier(X) ∪ {Y}
    //          done
    //          for each Z ∈ Children(X) do:
    //            for each Y ∈ PostDominanceFrontier(Z) do:
    //              if immediatePostDominator(Y) ≠ X:
    //                then PostDominanceFrontier(X) ← PostDominanceFrontier(X) ∪ {Y}
    //            done
    //          done
    //        done
    assert(!ControlDepMap.empty() || F.getBasicBlockList().size() == 1);
    for (const auto& item : ControlDepMap) {
        BasicBlock* bb = item.first;
        SmallVector<BasicBlock*, 8> CDbbs = item.second;
        Instruction* CDI;

        LLVM_DEBUG(dbgs()  << bb << "\n");
        // Old impl: every LD/ST controls every controlled BB's LD/ST
//        SmallVector<Instruction*, 8> bbs;
//        for (Instruction &i : *bb) {
//            if(isa<StoreInst>(i) || isa<LoadInst>(i)) {
//                bbs.push_back(&i);
//            }
//        }
//        for (BasicBlock *CDbb : CDbbs) {
//            for(Instruction &CDBBi : *CDbb) {
//                if(isa<StoreInst>(CDBBi) || isa<LoadInst>(CDBBi)) {
//                    for(Instruction *i : bbs) {
//                        MemoryControlDepMap[&CDBBi].push_back(i);
//                    }
//                }
//            }
//        }
        // Only last load controls the following controlled BB's LD/ST

        for (Instruction &i : reverse(*bb)) {
            if(isa<LoadInst>(i)) {
                CDI = &i;
                LLVM_DEBUG(dbgs() << "LOAD POINT: " << *CDI << "\n");
                break;
            }
        }

        for (BasicBlock *CDbb : CDbbs) {
            for(Instruction &CDBBi : *CDbb) {
                if(isa<StoreInst>(CDBBi) || isa<LoadInst>(CDBBi)) {
                    MemoryControlDepMap[&CDBBi].push_back(CDI);
                }
            }
        }
    }

}

void SchedulingConstraints::DataDepAnalysis() {
    LLVM_DEBUG(dbgs() << "----------BEGIN DATA DEPENDENCE ANALYSIS-----------\n");
    for (inst_iterator SrcI = inst_begin(F), SrcE = inst_end(F); SrcI != SrcE; ++SrcI) {
        if (SrcI->mayReadOrWriteMemory()) {
            for (inst_iterator DstI = SrcI, DstE = inst_end(F);
                 DstI != DstE; ++DstI) {
                if (DstI->mayReadOrWriteMemory()) {
                    LLVM_DEBUG(dbgs() << "Src:" << *SrcI << " --> Dst:" << *DstI << "\n");
                    LLVM_DEBUG(dbgs() << "  da analyze - ");
                    if (auto D = DI.depends(&*SrcI, &*DstI, true)) {
                        MemoryDataDepMap[&*DstI] = &*SrcI;
                    }
                    else
                        LLVM_DEBUG(dbgs() << "none!\n");
                }
            }
        }
    }
    LLVM_DEBUG(dbgs() << "----------END DATA DEPENDENCE ANALYSIS-----------\n");

}

void SchedulingConstraints::MemorySSAAnalysis() {
    LLVM_DEBUG(dbgs() << "----------BEGIN MEMORY SSA DEPENDENCE ANALYSIS-----------\n");

    // Should use Memory SSA to restrict order too!
    for (BasicBlock &bb : F) {
        MemoryPhi *mphi = MSSA.getMemoryAccess(&bb);
        for (Instruction &i : bb) {
            if (MSSA.getMemoryAccess(&i)) {
                MemoryUseOrDef *ma = MSSA.getMemoryAccess(&i);
                LLVM_DEBUG(dbgs()  << i << " : " << *ma << "\n");
                if (dyn_cast<MemoryUse>(ma)) {
                    MemoryUse *mu = dyn_cast<MemoryUse>(ma);
                    if (!MemorySSADepMap.count(mu->getMemoryInst())) {
                        MemorySSADepMap[mu->getMemoryInst()] = SmallVector<Instruction*, 8>{};
                    }
                    LLVM_DEBUG(dbgs() << "Memory Use : " << *mu << " : " << *mu->getOperand(0) << " : \n");
                    MemoryAccess *muo = mu->getOperand(0);
                    if (dyn_cast<MemoryUse>(muo)) {
                        MemoryUse *muu = dyn_cast<MemoryUse>(muo);
                        if (muu->getMemoryInst()) {
                            LLVM_DEBUG(dbgs()  << " Depends on : " << *muu << " inst : " <<  *muu->getMemoryInst() << "\n");
                            MemorySSADepMap[mu->getMemoryInst()].push_back(muu->getMemoryInst());
                        }
                    }
                    else if (dyn_cast<MemoryDef>(muo)) {
                        MemoryDef *mud = dyn_cast<MemoryDef>(muo);
                        if (mud->getMemoryInst()) {
                            LLVM_DEBUG(dbgs()  << " Depends on : " << *mud << " inst : " << *mud->getMemoryInst() << "\n");
                            MemorySSADepMap[mu->getMemoryInst()].push_back(mud->getMemoryInst());
                        }
                    }
                    else if (dyn_cast<MemoryPhi>(muo)){
                        MemoryPhi *muphi = dyn_cast<MemoryPhi>(muo);
                        for (int i = 0; i < muphi->getNumOperands(); ++i) {
                            MemoryAccess *memoryUseOrDef = muphi->getOperand(i);
                            if(dyn_cast<MemoryDef>(memoryUseOrDef)) {
                                MemoryDef *muphiDef = dyn_cast<MemoryDef>(memoryUseOrDef);
                                if (muphiDef->getMemoryInst()) {
                                    LLVM_DEBUG(dbgs()  << " Depends on : " << *muphiDef << " inst : " << *muphiDef->getMemoryInst() << "\n");
                                    MemorySSADepMap[mu->getMemoryInst()].push_back(muphiDef->getMemoryInst());
                                }
                            }
                            else if (dyn_cast<MemoryUse>(memoryUseOrDef)) {
                                MemoryUse *muphiUse = dyn_cast<MemoryUse>(memoryUseOrDef);
                                if (muphiUse->getMemoryInst()) {
                                    LLVM_DEBUG(dbgs()  << " Depends on : " << *muphiUse << " inst : " << *muphiUse->getMemoryInst() << "\n");
                                    MemorySSADepMap[mu->getMemoryInst()].push_back(muphiUse->getMemoryInst());

                                }
                            }
                        }
                    }
                }
                else if (dyn_cast<MemoryDef>(ma)) {
                    MemoryDef *md = dyn_cast<MemoryDef>(ma);
                    LLVM_DEBUG(dbgs() << "Memory Def : " << *md << " : " << *md->getOperand(0) << " : ");
                    MemoryAccess *mdo = md->getOperand(0);
                    if (dyn_cast<MemoryUse>(mdo)) {
                        MemoryUse *mdu = dyn_cast<MemoryUse>(mdo);
                        if (mdu->getMemoryInst()){
                            LLVM_DEBUG(dbgs()  << " Depends on : " << *mdu << " inst : " << *mdu->getMemoryInst() << "\n");
                            MemorySSADepMap[md->getMemoryInst()].push_back(mdu->getMemoryInst());
                        }
                    }
                    else if (dyn_cast<MemoryDef>(mdo)) {
                        MemoryDef *mdd = dyn_cast<MemoryDef>(mdo);
                        if (mdd->getMemoryInst()){
                            LLVM_DEBUG(dbgs()  << " Depends on : " << *mdd << " inst : " << *mdd->getMemoryInst() << "\n");
                            MemorySSADepMap[md->getMemoryInst()].push_back(mdd->getMemoryInst());
                        }
                    }
                    else if (dyn_cast<MemoryPhi>(mdo)){
                        MemoryPhi *muphi = dyn_cast<MemoryPhi>(mdo);
                        for (int i = 0; i < muphi->getNumOperands(); ++i) {
                            MemoryAccess *memoryUseOrDef = muphi->getOperand(i);
                            if(dyn_cast<MemoryDef>(memoryUseOrDef)) {
                                MemoryDef *muphiDef = dyn_cast<MemoryDef>(memoryUseOrDef);
                                if (muphiDef->getMemoryInst()) {
                                    MemorySSADepMap[md->getMemoryInst()].push_back(muphiDef->getMemoryInst());
                                    LLVM_DEBUG(dbgs()  << " Depends on : " << *muphiDef << " inst : " << *muphiDef->getMemoryInst() << "\n");
                                }
                            }
                            else if (dyn_cast<MemoryUse>(memoryUseOrDef)) {
                                MemoryUse *muphiUse = dyn_cast<MemoryUse>(memoryUseOrDef);
                                if (muphiUse->getMemoryInst()) {
                                    MemorySSADepMap[md->getMemoryInst()].push_back(muphiUse->getMemoryInst());
                                    LLVM_DEBUG(dbgs()  << " Depends on : " << *muphiUse << " inst : " << *muphiUse->getMemoryInst() << "\n");
                                }
                            }
                        }
                    }
                }
                else {
                    assert(false && "Wrong Memorry SSA cast !");
                }
                LLVM_DEBUG(dbgs()<< "\n");
            }
        }
    }
    LLVM_DEBUG(dbgs() << "----------END MEMORY SSA DEPENDENCE ANALYSIS-----------\n");

}

void SchedulingConstraints::MemoryDefUseAnalysis() {
    LLVM_DEBUG(dbgs() << "----------BEGIN MEMORY DEF-USE DEPENDENCE ANALYSIS-----------\n");

    for (BasicBlock &bb : F) {
        for (Instruction &i : bb) {
            MemoryDefUseDepMap[&i] = SmallVector<Instruction*, 8>{};
        }
    }
    for (BasicBlock &bb : F) {
        for (Instruction &i : bb) {
            if (isa<LoadInst>(i)) {
                // Def-Use Chains
                if (!i.users().empty()){
                    LLVM_DEBUG(dbgs() << "Load Instruction : " << i << " is used in \n");
                    std::deque<Instruction*> worklist;
                    worklist.push_back(&i);
                    while (!worklist.empty()){
                        Instruction *currInst = worklist.front();
                        worklist.pop_front();
                        for (User *U : currInst->users()) {
                            if (auto *Inst = dyn_cast<Instruction>(U) ) {
//                                LLVM_DEBUG(dbgs() << *Inst << "\n");

                                if (Inst != currInst) {
                                    if (isa<StoreInst>(Inst) || isa<LoadInst>(Inst)) {
                                        LLVM_DEBUG(dbgs() << *Inst << "\n");
                                        MemoryDefUseDepMap[Inst].push_back(&i);
                                    }
                                    else {
                                        LLVM_DEBUG(dbgs() << "Pushing it back to the list: " << *Inst << "\n");
                                        worklist.push_back(Inst);
                                    }
                                }

                            }
                        }
                    }

                }
            }
            if (isa<StoreInst>(i)) {
                if (!i.getOperand(1)->users().empty()) {
                    LLVM_DEBUG(dbgs() << "Store Instruction : " << i << " is used in \n");
                    std::deque<Instruction*> worklist;
                    for (auto U : i.getOperand(1)->users()) {
                        if (auto *Inst = dyn_cast<Instruction>(U) ) {
                            if (isa<StoreInst>(Inst) || isa<LoadInst>(Inst)) {
                                MemoryDefUseDepMap[Inst].push_back(&i);
                                continue;
                            }
                            else {
                                LLVM_DEBUG(dbgs() << "Pushing it back to the list: " << *Inst << "\n");
                                worklist.push_back(Inst);
                            }

                        }
                    }
                    while (!worklist.empty()){
                        Instruction *currInst = worklist.front();
                        worklist.pop_front();
                        for (User *U : currInst->users()) {
                            if (auto *Inst = dyn_cast<Instruction>(U) ) {
                                //                                LLVM_DEBUG(dbgs() << *Inst << "\n");

                                if (Inst != currInst) {
                                    if (isa<StoreInst>(Inst) || isa<LoadInst>(Inst)) {
                                        LLVM_DEBUG(dbgs() << " Load/Store instruction:"  << *Inst << "\n");
                                        MemoryDefUseDepMap[Inst].push_back(&i);
                                    }
                                    else {
                                        LLVM_DEBUG(dbgs() << "Pushing it back to the list: " << *Inst << "\n");
                                        worklist.push_back(Inst);
                                    }
                                }

                            }
                        }
                    }
                }
            }
        }
    }
    LLVM_DEBUG(dbgs() << "----------END MEMORY DEF-USE DEPENDENCE ANALYSIS-----------\n");
}

}
