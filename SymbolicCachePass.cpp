//
// Symbolic Cache Predictive Analysis Pass
//

#include "llvm/IR/Function.h"
#include "llvm/IR/InstVisitor.h"
#include "llvm/Pass.h"
#include "llvm/Support/ErrorHandling.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/IR/Instruction.def"

using namespace llvm;

#include "Analysis/SchedulingConstraints.h"
#include "SymCache/SymCache.h"
#include "ExpCache/ExpCache.h"

#include <queue>


static cl::opt<std::string>
        LogFilepath("logpath", cl::init(""), cl::NotHidden,
                    cl::desc("log file path"));

static cl::opt<unsigned>
        CacheSize("cachesize", cl::init(8192), cl::NotHidden,
                     cl::desc("Default cache size is 32768 bytes"));

static cl::opt<unsigned>
        CacheLineSize("cachelinesize", cl::init(64), cl::NotHidden,
                     cl::desc("Default line size is 64 bytes"));

static cl::opt<unsigned>
        CacheAssoc("cacheassoc", cl::init(128), cl::NotHidden,
                      cl::desc("Default cache associativity is 128-way"));

static cl::opt<unsigned>
        WindowSize("windowsize", cl::init(10), cl::NotHidden,
                   cl::desc("Default window size is 10"));
static cl::opt<unsigned>
        WindowCounter("windowct", cl::init(0), cl::NotHidden,
           cl::desc("Default window counter starts at 0"));

static cl::opt<std::string>
        MemoryModel("memorymodel", cl::init("TSO"), cl::NotHidden,
                   cl::desc("Memory Model: (TSO/PSO)"));

static cl::opt<std::string>
        Mode("mode", cl::init("opt"), cl::NotHidden,
                    cl::desc("Cache Check Mode: expone/sym)"));

static cl::opt<bool>
        AgeCheck("agecheck", cl::init(false), cl::NotHidden,
             cl::desc("Print all cache states in the explicit check"));


struct SymbolicCache : public FunctionPass, public InstVisitor<SymbolicCache> {
//    friend class InstVisitor<SymbolicCache>;
    static char ID; // Pass identification, replacement for typeid

    SymbolicCache() : FunctionPass(ID) {}
    bool runOnFunction(Function &F) override {
        clock_t timeBegin = clock();

        errs().write_escaped(F.getName()) << '\n';

        if(F.getName() == "main" && Mode == "expone") {
            auto *expCache = new expc::ExpCache(CacheSize, CacheLineSize, CacheAssoc, LogFilepath, MemoryModel, WindowSize, true);
            expCache->CacheExplicit(WindowCounter, AgeCheck);
            clock_t timeEnd = clock();
            double elapsed_secs = double(timeEnd - timeBegin) / CLOCKS_PER_SEC;
            errs() << "Total Time Elapsed: " << to_string(elapsed_secs) << "\n";
            expCache->LogTime(to_string(elapsed_secs));
        }
        else if(F.getName() == "main" && Mode == "sym") {
            auto *symCache = new symc::SymCache(CacheSize, CacheLineSize, CacheAssoc, LogFilepath, MemoryModel, WindowSize);
            symCache->CachePredictiveAnalysis(WindowCounter);
            clock_t timeEnd = clock();
            double elapsed_secs = double(timeEnd - timeBegin) / CLOCKS_PER_SEC;
            errs() << "Total Time Elapsed: " << to_string(elapsed_secs) << "\n";
            symCache->LogTime(to_string(elapsed_secs));
        }


        return false;
    }
};

char SymbolicCache::ID = 0;
static RegisterPass<SymbolicCache>
        Z("symbocache", "Symbolic Predictive Cache Analysis");
