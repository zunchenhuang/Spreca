#include "llvm/Analysis/DependenceAnalysis.h"
#include "llvm/Analysis/DominanceFrontier.h"
#include "llvm/Analysis/PostDominators.h"
#include "llvm/Analysis/MemorySSA.h"
#include "llvm/Analysis/MemoryDependenceAnalysis.h"
#include "llvm/Analysis/BasicAliasAnalysis.h"
#include "llvm/Analysis/GlobalsModRef.h"
#include "llvm/Analysis/AliasSetTracker.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstVisitor.h"
#include "llvm/IR/Constant.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Use.h"
#include "llvm/IR/User.h"
#include "llvm/IR/Value.h"
#include "llvm/Pass.h"
#include "llvm/PassAnalysisSupport.h"
#include "llvm/Support/ErrorHandling.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/DerivedTypes.h"
#include <llvm/IR/DebugInfoMetadata.h>
#include <llvm/Support/raw_ostream.h>

#include <iostream>
#include <fstream>
#include <deque>

#include "../Analysis/SchedulingConstraints.h"
#define ARCH_SIZE 64 // 64-bit architecture

#include "../Analysis/SchedulingConstraints.h"

using namespace llvm;

#define DEBUG_TYPE "symtracegen"

namespace symc {

static cl::opt<std::string> InstIDPath("instidpath", cl::init(""),
                                       cl::NotHidden, cl::desc("Instructions to its ID file path"));

struct SymTraceGen : public FunctionPass, public InstVisitor<SymTraceGen> {
    static char ID;
    SymTraceGen() : FunctionPass(ID) {}
    Function *printDDep, *printCDep, *printStoreAddr, *printLoadAddr,
    *printSymStoreAddr, *printSymLoadAddr, *printCounter;
    std::vector<Instruction *> LoadStoreInsts;
    std::map<Instruction*, SmallVector<Instruction*, 8>> MemoryControlDepMap;
    std::map<Instruction*, Instruction*> MemoryDataDepMap;
    std::map<Instruction*, SmallVector<Instruction*, 8>> MemorySSADepMap;
    std::map<Instruction*, SmallVector<Instruction*, 8>> MemoryDefUseDepMap;
    std::map<Instruction*, SmallVector<Instruction*, 8>> AllDepMap;
    std::map<Instruction*, int> InstToIDMap;
    // Instruction Counter Usage
    std::map<Instruction*, unsigned> InstToIncMap;
    // Source instructions of secret key load/stores
    SmallVector<Instruction*, 4> SecretInsts;
    std::set<Instruction*> SecretAffectedInsts;

    GlobalVariable *GV_Inst_Counter;
    // Initialize external functions from helper function
    void init(Function &F) {
        Module *M = F.getParent();
        for (Module::iterator F = M->begin(), E = M->end(); F!= E; ++F) {
            if (F->getName() == "printCDep") {
                printCDep = cast<Function>(F);
                errs() << "found printCDep function " << *printCDep->getFunctionType() << "\n";
            }
            if (F->getName() == "printDDep") {
                printDDep = cast<Function>(F);
                errs() << "found printDDep function " << *printDDep->getFunctionType() << "\n";
            }
            if (F->getName() == "printStoreAddr") {
                printStoreAddr = cast<Function>(F);
                errs() << "found printStoreAddr function " << *printStoreAddr->getFunctionType() << "\n";
            }
            if (F->getName() == "printLoadAddr") {
                printLoadAddr = cast<Function>(F);
                errs() << "found printLoadAddr function " << *printLoadAddr->getFunctionType() << "\n";
            }
            if (F->getName() == "printSymStoreAddr") {
                printSymStoreAddr = cast<Function>(F);
                errs() << "found printSymStoreAddr function " << *printSymStoreAddr->getFunctionType() << "\n";
            }
            if (F->getName() == "printSymLoadAddr") {
                printSymLoadAddr = cast<Function>(F);
                errs() << "found printSymLoadAddr function " << *printSymLoadAddr->getFunctionType() << "\n";
            }
            if (F->getName() == "printCounter") {
                printCounter = cast<Function>(F);
                errs() << "found printCounter function " << *printCounter->getFunctionType() << "\n";
            }
        }
    }

    virtual bool runOnFunction(Function &F) override {
        if (F.getName() != "main") {
            return false;
        }

        this->init(F);

        DependenceInfo &DI = getAnalysis<DependenceAnalysisWrapperPass>().getDI();
        PostDominatorTree &PDT = getAnalysis<PostDominatorTreeWrapperPass>().getPostDomTree();
        DominanceFrontier &DF = getAnalysis<DominanceFrontierWrapperPass>().getDominanceFrontier();
        MemorySSA &memorySSA = getAnalysis<MemorySSAWrapperPass>().getMSSA();
        MemoryDependenceResults &MDR = getAnalysis<MemoryDependenceWrapperPass>().getMemDep();
        BasicAAResult &BAAR = getAnalysis<BasicAAWrapperPass>().getResult();
        PDT.recalculate(F);

        errs() << "Function: " << F.getName() << " BlockSize: " << F.getBasicBlockList().size() << "\n";
        auto *SC = new SchedulingConstraints(F, PDT, DI, memorySSA);
        SC->ControlDepAnalysis();
        // SC->CDGWriter();
        SC->DataDepAnalysis();
        SC->MemorySSAAnalysis();
        SC->MemoryDefUseAnalysis();

        MemoryControlDepMap = SC->GetMemoryControlDepMap();
        MemoryDataDepMap = SC->GetMemoryDataDepMap();
        MemorySSADepMap = SC->GetMemorySSADepMap();
        MemoryDefUseDepMap = SC->GetMemoryDefUseDepMap();

//        for (auto item : MemoryDataDepMap) {
//            if (!AllDepMap.count(item.first)) {
//                AllDepMap[item.first] = SmallVector<Instruction*, 8>{};
//            }
//            AllDepMap[item.first].push_back(item.second);
//        }
//        for (auto item : MemorySSADepMap) {
//            if (!AllDepMap.count(item.first)) {
//                AllDepMap[item.first] = SmallVector<Instruction*, 8>{};
//            }
//            for (auto inst : item.second) {
//                AllDepMap[item.first].push_back(inst);
//            }
//        }
        for (auto item : MemoryDefUseDepMap) {
            if (!AllDepMap.count(item.first)) {
                AllDepMap[item.first] = SmallVector<Instruction*, 8>{};
            }
            for (auto inst : item.second) {
                AllDepMap[item.first].push_back(inst);
            }
        }

//        assert((!MemoryDataDepMap.empty() && !MemoryControlDepMap.empty()) || F.getBasicBlockList().size() == 1);
        assert(!MemoryDataDepMap.empty());

        IRBuilder<> builder(F.getContext());
        GV_Inst_Counter = CreateGlob(builder, "Inst_Counter", F);
        std::vector<Value *> SecretVars;
        int instIDIndex = 0;

        for (BasicBlock &bb : F) {
            for (Instruction &i : bb) {
                if (isa<CallInst>(i)) {
                    //                    errs() << i << " !!\n";
                    if(!cast<CallInst>(i).getCalledFunction()) continue;

                    Function *fn = cast<CallInst>(i).getCalledFunction();

                    StringRef fn_name = fn->getName();
                    if (fn_name == "llvm.var.annotation"){
                        errs() << fn_name << " ~ " << *i.getOperand(0) << " " << "\n";
                        if (isa<BitCastInst>(i.getOperand(0))){
                            errs() << i << "\n";
                            auto *bi = cast<BitCastInst>(i.getOperand(0));
                            Value *SecretVar = bi->getOperand(0);
                            SecretVars.push_back(SecretVar);
                        }
                        else{
                            errs() << i << "\n";
                            Value *SecretVar = i.getOperand(0);
                            SecretVars.push_back(SecretVar);

                        }
                    }
                }
            }
        }
        assert("Did not find secret var!" && !SecretVars.empty());
        for (auto &SecretVar : SecretVars)
            errs() << "Secret var is : " << *SecretVar << "\n";

        for (BasicBlock &bb : F) {
            unsigned currInc = 1;
            for (Instruction &i : bb) {
                InstToIDMap[&i] = instIDIndex;
                instIDIndex++;

                if (isa<LoadInst>(&i) || isa<StoreInst>(&i)) {
                    InstToIncMap[&i] = currInc;
                    currInc = 1;
                    if (std::find(SecretVars.begin(), SecretVars.end(), i.getOperand(0)) != SecretVars.end()) {
                        errs() << "Found loading point of secret var " << i << "\n";
                        SecretInsts.push_back(&i);
                    }
                }
                else
                    currInc++;
            }
            InstToIncMap[&bb.back()] = currInc-1;
        }

        for (auto secretInst : SecretInsts) {
            errs() << "Finish one round of finding secret affected insts!\n";
            CalculateAffectedInstsFromSecret(*secretInst);
        }
        errs() << "Output affected instructions from the secret: \n";
        for (auto item : SecretAffectedInsts) {
            errs() << *item << "\n";
        }
        llvm::Type *i32_type = llvm::IntegerType::getInt32Ty(F.getContext());

        for (BasicBlock &bb : F) {
            for (Instruction &i : bb) {
                if (i.getNextNode() == nullptr) {
                    continue;
                }
                if (MemoryDataDepMap[&i]) {
                    //errs() << "DDEP DEBUG INFO: " << " " <<  i << i.getDebugLoc().getCol() << "," <<  i.getDebugLoc().getLine() <<  "\n";

                    //                    builder.SetInsertPoint(&i);
                    builder.SetInsertPoint(i.getNextNode());

                    builder.SetCurrentDebugLocation(i.getDebugLoc());
                    llvm::Constant *src = llvm::ConstantInt::get(i32_type,
                                                                 InstToIDMap[MemoryDataDepMap[&i]]/*value*/);
                    llvm::Constant *dest = llvm::ConstantInt::get(i32_type, InstToIDMap[&i]/*value*/);
                    errs() << "Data DEP Memory DA: " << InstToIDMap[&i] << " " << InstToIDMap[MemoryDataDepMap[&i]]
                    << "\n";
                    Value *args[] = {src, dest};
                    builder.CreateCall(printDDep, args);
                }
                if (MemorySSADepMap.count(&i)) {
                    //errs() << "DDEP DEBUG INFO: " << " " <<  i << i.getDebugLoc().getCol() << "," <<  i.getDebugLoc().getLine() <<  "\n";

                    builder.SetInsertPoint(i.getNextNode());
                    builder.SetCurrentDebugLocation(i.getDebugLoc());
                    for (auto inst : MemorySSADepMap[&i]) {
                        llvm::Constant *src = llvm::ConstantInt::get(i32_type,
                                                                     InstToIDMap[inst]/*value*/);
                        llvm::Constant *dest = llvm::ConstantInt::get(i32_type, InstToIDMap[&i]/*value*/);
                        errs() << "Data DEP SSA: " << InstToIDMap[&i] << " " << InstToIDMap[inst]
                        << "\n";
                        Value *args[] = {src, dest};
                        builder.CreateCall(printDDep, args);
                    }

                }
                if (MemoryDefUseDepMap.count(&i)) {
                    builder.SetInsertPoint(i.getNextNode());
                    errs() << i << "\n";
                    builder.SetCurrentDebugLocation(i.getDebugLoc());
                    for (auto inst : MemoryDefUseDepMap[&i]) {
                        llvm::Constant *src = llvm::ConstantInt::get(i32_type,
                                                                     InstToIDMap[inst]/*value*/);
                        llvm::Constant *dest = llvm::ConstantInt::get(i32_type, InstToIDMap[&i]/*value*/);
                        errs() << "Memory USE: "  << InstToIDMap[&i] << " " << InstToIDMap[inst]
                        << "\n";
                        Value *args[] = {src, dest};
                        builder.CreateCall(printDDep, args);
                    }
                }
            }
        }

        for (BasicBlock &bb : F) {
            for (Instruction &i : bb) {
                //errs() << i << "\n";

                this->visit(i);
            }
            // Instrument remaining instructions counter
            InstruCountInstExecuted(bb.back(), InstToIncMap[&bb.back()]);
        }
    }


    void CalculateAffectedInstsFromSecret(Instruction& I) {
        std::deque<Instruction*> instQueue;
        std::set<Instruction*> visited;
        visited.insert(&I);
        errs() << I << "\n";
        for (auto item : AllDepMap) {

            bool find = false;
            for (auto inst : item.second) {
                if (inst == &I) find = true;
            }
            if (find)
                instQueue.push_back(item.first);

        }

        while(!instQueue.empty()) {
            auto currI = instQueue.front();
            instQueue.pop_front();
            SecretAffectedInsts.insert(currI);
            for (auto item : AllDepMap) {
                if (SecretAffectedInsts.count(item.first)) continue;
                bool find = false;
                for (auto inst : item.second) {
                    if (inst == currI) find = true;
                }
                if (find)
                    instQueue.push_back(item.first);

            }
            visited.insert(currI);
        }
    }

    GlobalVariable *CreateGlob(IRBuilder<> &Builder, std::string Name, Function &F) {
        F.getParent()->getOrInsertGlobal(Name, Builder.getInt32Ty());
        ConstantInt* const_int_val = ConstantInt::get(F.getParent()->getContext(), APInt(32,0));
        GlobalVariable *gVar = F.getParent()->getNamedGlobal(Name);
        gVar->setInitializer(const_int_val);
        gVar->setLinkage(GlobalValue::CommonLinkage);
        gVar->setDSOLocal(true);
        return gVar;
    }

    void visitLoadInst(LoadInst &LI) {
        if (auto *gv = dyn_cast<GlobalVariable>(LI.getOperand(0))){
            if (gv->getName() == "Inst_Counter") {
                return;
            }
        }
        IRBuilder <> builder(LI.getContext());
        auto &I = cast<Instruction>(LI);
        InstruCountInstExecuted(I, InstToIncMap[&I]);
        InstruCountInstPrinter(I);
        InstruAddr(I);
    }

    void visitStoreInst(StoreInst &SI) {
        if (auto *gv = dyn_cast<GlobalVariable>(SI.getOperand(1))){
            if (gv->getName() == "Inst_Counter") {
                return;
            }
        }
        IRBuilder <> builder(SI.getContext());
        auto &I = cast<Instruction>(SI);
        InstruCountInstExecuted(I, InstToIncMap[&I]);
        InstruCountInstPrinter(I);
        InstruAddr(I);
    }

    static void InstruCountInstExecuted(Instruction &I, unsigned inc) {
        // Step 0: create IR builder for I
        IRBuilder <> builder(I.getModule()->getContext());
        builder.SetInsertPoint(&I);

        // Step 1: instrument how many insts since last ld/store
        GlobalValue *GV_ic = I.getModule()->getNamedGlobal("Inst_Counter");
        ConstantInt* inc_const = ConstantInt::get(Type::getInt32Ty(I.getParent()->getParent()->getContext()), inc);
        auto *load_inst_counter = builder.CreateLoad(GV_ic);
        auto *add_inst_counter = builder.CreateAdd(inc_const, load_inst_counter);
        auto *store_inst_counter = builder.CreateStore(add_inst_counter, GV_ic);
    }

    void InstruCountInstPrinter(Instruction &I) {
        IRBuilder<> builder(I.getContext());
        builder.SetInsertPoint(&I);
        GlobalValue *GV_ic = I.getModule()->getNamedGlobal("Inst_Counter");
        auto *load_inst_counter = builder.CreateLoad(GV_ic);
        builder.CreateCall(printCounter, load_inst_counter);
    }

    void InstruAddr(Instruction &I) {
        IRBuilder <> builder(I.getContext());
        Value *address;
        bool memoryType, symboVar = false;
        StoreInst *SI;
        LoadInst *LI;
        if ((SI = dyn_cast<StoreInst>(&I))){
            memoryType = true;
            address = SI->getPointerOperand();
        }
        else if((LI = dyn_cast<LoadInst>(&I))){
            memoryType = false;
            address = LI->getPointerOperand();
        }
        assert(address != nullptr);
        GlobalVariable *ptGV;
        // Check if it's a symbolic load/store
        unsigned symbolVarSize;
        unsigned symbolVarIndex;
        unsigned symboVarStepSize;
        ConstantInt *indexConst;
        bool indexConstFlag = false;
        if (!SecretAffectedInsts.count(&I)) {
            symboVar = false;
        }
        else {
            for (Use &U : (&I)->operands()) {

                if(auto * GV = dyn_cast<GlobalVariable>(U)){
                    // Do something with GV
                    //errs() << I << "\n";
                    //errs() << "Global var found:\n";
                    //GV->dump();
                }
                else if (auto* gepo = dyn_cast<GEPOperator>(&U))
                {
                    errs() << I << "\n";
                    errs() << "GEPO - " << *gepo << "\n";
                    if (auto* gv = dyn_cast<GlobalVariable>(gepo->getPointerOperand()))
                    {

                        errs() << "GV - " << *gv << " NAME: " << gv->getName() << " Type is " <<
                        *gv->getType() << "\n";
                        if (auto* indexo = dyn_cast<ConstantInt>(gepo->getOperand(2))) {
                            //errs() << *indexo << " ~~ ";
                            //errs() << "Constant index of gep encountered, skip\n";
                        }
                        else {
                            symboVar = true;
                            ptGV = gv;
                            Module *m = I.getParent()->getParent()->getParent();
                            //errs() << "Making symbolic accesses for "  << *gepo->getOperand(2) << " \n ";
                            errs() << "GV's size is " <<
                            m->getDataLayout().getTypeAllocSizeInBits(ptGV->getType()->getContainedType(0)) << "\n";
                            //                            symbolVarSize = I.getParent()->getParent()->getParent()->getDataLayout().getTypeAllocSizeInBits(gv->getType()->getContainedType(0));
                            symboVarStepSize = m->getDataLayout().getTypeAllocSize(ptGV->getType()->getContainedType(0)->getContainedType(0));
                            errs() << "GV's element size is: " << symboVarStepSize << "\n";
                            symbolVarSize = m->getDataLayout().getTypeAllocSize(ptGV->getType()->getContainedType(0)) - symboVarStepSize;

                        }
                    }

                    if (auto* gepoi = dyn_cast<GEPOperator>(gepo->getPointerOperand()))
                    {


                        if (auto* gv = dyn_cast<GlobalVariable>(gepoi->getPointerOperand()))
                        {

                            errs() << "GV - " << *gv << " NAME: " << gv->getName() << " Type is " <<
                            *gv->getType() << "\n";

                            if (auto* indexo = dyn_cast<ConstantInt>(gepoi->getOperand(2))) {
                                errs() << *indexo << " ~~ ";
                                indexConst = indexo;
                                indexConstFlag = true;
                                errs() << "Constant index of gep encountered\n";
                            }

                            symboVar = true;
                            ptGV = gv;
                            Module *m = I.getParent()->getParent()->getParent();
                            errs() << "Making symbolic accesses for "  << *gepoi->getOperand(2) << " \n ";
                            errs() << "GV's size is " <<
                            m->getDataLayout().getTypeAllocSizeInBits(ptGV->getType()->getContainedType(0)->getContainedType(0)) << "\n";
                            //                            symbolVarSize = I.getParent()->getParent()->getParent()->getDataLayout().getTypeAllocSizeInBits(gv->getType()->getContainedType(0));
                            symboVarStepSize = m->getDataLayout().getTypeAllocSize(ptGV->getType()->getContainedType(0)->getContainedType(0)->getContainedType(0));
                            errs() << "GV's element size is: " << symboVarStepSize << "\n";
                            symbolVarSize = m->getDataLayout().getTypeAllocSize(ptGV->getType()->getContainedType(0)->getContainedType(0)) - symboVarStepSize;


                        }
                    }

                    for (auto it = gepo->idx_begin(), et = gepo->idx_end(); it != et; ++it)
                    {
                        errs() << "gepo op : " << *it << "\n";
                        if (GlobalVariable* gv = dyn_cast<GlobalVariable>(*it))
                        {
                            errs() << I << "\n";
                            errs() << "GEPO - " << *gepo << "\n";
                            errs() << "GVi - " << *gv << " NAME: " << gv->getName() <<  "\n";
                            symboVar = true;
                            ptGV = gv;
                            Module *m = I.getParent()->getParent()->getParent();
                            //errs() << "Making symbolic accesses for "  << *gepo->getOperand(2) << " \n ";
                            errs() << "GV's size is " <<
                            m->getDataLayout().getTypeAllocSizeInBits(ptGV->getType()->getContainedType(0)) << "\n";
                            //                            symbolVarSize = I.getParent()->getParent()->getParent()->getDataLayout().getTypeAllocSizeInBits(gv->getType()->getContainedType(0));
                            symboVarStepSize = m->getDataLayout().getTypeAllocSize(ptGV->getType()->getContainedType(0)->getContainedType(0));
                            errs() << "GV's element size is: " << symboVarStepSize << "\n";
                            symbolVarSize = m->getDataLayout().getTypeAllocSize(ptGV->getType()->getContainedType(0)) - symboVarStepSize;
                        }
                        else if (auto* gepoi = dyn_cast<GEPOperator>(*it)) {
                            if (auto* gv = dyn_cast<GlobalVariable>(gepo->getPointerOperand()))
                            {

                                errs() << "GV - " << *gv << " NAME: " << gv->getName() << " Type is " <<
                                *gv->getType() << "\n";
                                if (auto* indexo = dyn_cast<ConstantInt>(gepo->getOperand(2))) {
                                    //errs() << *indexo << " ~~ ";
                                    //errs() << "Constant index of gep encountered, skip\n";
                                }
                                else {
                                    symboVar = true;
                                    ptGV = gv;
                                    Module *m = I.getParent()->getParent()->getParent();
                                    //errs() << "Making symbolic accesses for "  << *gepo->getOperand(2) << " \n ";
                                    errs() << "GV's size is " <<
                                    m->getDataLayout().getTypeAllocSizeInBits(ptGV->getType()->getContainedType(0)) << "\n";
                                    //                            symbolVarSize = I.getParent()->getParent()->getParent()->getDataLayout().getTypeAllocSizeInBits(gv->getType()->getContainedType(0));
                                    symboVarStepSize = m->getDataLayout().getTypeAllocSize(ptGV->getType()->getContainedType(0)->getContainedType(0));
                                    errs() << "GV's element size is: " << symboVarStepSize << "\n";
                                    symbolVarSize = m->getDataLayout().getTypeAllocSize(ptGV->getType()->getContainedType(0)) - symboVarStepSize;

                                }
                            }
                        }
                    }
                }

            }

        }



        Type *ty = address->getType();
//        errs() << "Address type " << *ty <<  " " << I << '\n';
        llvm::Type *i32_type = llvm::IntegerType::getInt32Ty(I.getContext());
        llvm::Type *i64_type = llvm::IntegerType::getInt64Ty(I.getContext());
        builder.SetInsertPoint(&I);
        builder.SetCurrentDebugLocation(I.getDebugLoc());
        Value *address_i64, *address_i64_symbo_b, *address_i64_symbo_e, *stepSize;
        if (ty->isPointerTy()) {
            address_i64 = builder.CreatePtrToInt(address, i64_type);
        }
        else if (ty->isIntegerTy()) {
            address_i64 = builder.CreateIntCast(address, i64_type, 1);
        }
        else {
            assert(false && "Wrong Address Loading Type! Update LLVM Trace Gen Pass!");
        }

        if (symboVar) {
            errs() << "SYMBO VAR\n";
            Value *address_of_load_length = ConstantInt::get(i64_type, symbolVarSize);
            Value *ptGVLoad = builder.CreateLoad(ptGV);
            errs() << "Symbo var type is : " << *ptGV->getType()->getContainedType(0) << " " << ptGV->getType()->isArrayTy() << "\n";
            errs() << ptGVLoad->getType()->isArrayTy() << "\n";
            if (ptGVLoad->getType()->isPointerTy()) {
                address_i64_symbo_b = builder.CreatePtrToInt(address, i64_type);
                errs() << " Pointer type\n";
            }
            else if (ptGVLoad->getType()->isIntegerTy()) {
                address_i64_symbo_b = builder.CreateIntCast(address, i64_type, 1);
            }
//            else if (ptGV->getType()->getTypeID() == llvm::ArrayType::PointerTyID) {
            else if (ptGVLoad->getType()->isArrayTy()) {
//                address_i64_symbo_b = builder.CreatePtrToInt(address, i64_type);
                if (!indexConstFlag) {

                    Value *index1 = ConstantInt::get(i64_type, 0);
                    Value *index2 = ConstantInt::get(i64_type, 0);

                    Value* indexList[2] = {index1, index2};
                    Value* gep = builder.CreateGEP(ptGV, indexList);
                    address_i64_symbo_b = builder.CreatePtrToInt(gep, i64_type);

                }
                else {
                    Value *index1 = ConstantInt::get(i64_type, 0);
                    Value *index2 = ConstantInt::get(i64_type, 0);

                    Value* indexList[2] = {index1, indexConst};
                    Value* gep = builder.CreateGEP(ptGV, indexList);

                    Value* indexListInside[2] = {index1, index2};
                    Value* gepi = builder.CreateGEP(gep, indexListInside);
                    address_i64_symbo_b = builder.CreatePtrToInt(gepi, i64_type);

                }
                errs() << " Array type\n";

            }
            else {
                assert(false && "Wrong Address Loading Type! Update LLVM Trace Gen Pass!");
            }
            address_i64_symbo_e =  builder.CreateAdd(address_i64_symbo_b, address_of_load_length);
            stepSize = llvm::ConstantInt::get(i32_type, symboVarStepSize);
        }
        llvm::Constant *i32_val = llvm::ConstantInt::get(i32_type, InstToIDMap[&I]/*value*/);
        llvm::Constant *LineLoc, *ColLoc;
        if (I.getNextNode()->getDebugLoc().get() != nullptr) {
            LineLoc = llvm::ConstantInt::get(i32_type,  I.getNextNode()->getDebugLoc().getLine());
            ColLoc = llvm::ConstantInt::get(i32_type,  I.getNextNode()->getDebugLoc().getCol());
        }
        else {
            LineLoc = llvm::ConstantInt::get(i32_type,  0);
            ColLoc = llvm::ConstantInt::get(i32_type,  0);
        }

        Value * args[]  = {address_i64, i32_val, LineLoc, ColLoc};
        Value * args_symbo[]  = {address_i64, address_i64_symbo_b, address_i64_symbo_e, stepSize, i32_val, LineLoc, ColLoc};
        if (isa<StoreInst>(&I)){
            if(symboVar)
                builder.CreateCall(printSymStoreAddr, args_symbo);
            else
                builder.CreateCall(printStoreAddr, args);
        }

        if (isa<LoadInst>(&I)){
            if(symboVar)
                builder.CreateCall(printSymLoadAddr, args_symbo);
            else
                builder.CreateCall(printLoadAddr, args);
        }

    }

    void getAnalysisUsage(AnalysisUsage &AU) const override {
        AU.setPreservesCFG();
        AU.addRequired<DependenceAnalysisWrapperPass>();
        AU.addRequired<DominanceFrontierWrapperPass>();
        AU.addRequired<DominatorTreeWrapperPass>();
        AU.addRequired<PostDominatorTreeWrapperPass>();
        AU.addRequired<MemorySSAWrapperPass>();
        AU.addRequired<MemoryDependenceWrapperPass>();
        AU.addRequired<BasicAAWrapperPass>();
    }

};

char SymTraceGen::ID = 0;
static RegisterPass<SymTraceGen> X("symtracegen", "Symbolically Generate runtime trace for memory accesses.");

}
#undef  DEBUG_TYPE
