
## Symbolic Predictive Cache Analysis for Out-of-Order Execution

## Introduction
We propose a trace-based symbolic method for analyzing
cache side channels of a program under a CPU-level optimization called out-of-order execution (OOE). The method is predictive in that it takes the in-order execution trace as input and then analyzes all possible out-of-order executions of the same set of instructions to check if any of them leaks sensitive information of the program. The method has two important properties. The first one is accurately analyzing cache behaviors of the program execution under OOE, which is largely overlooked by existing methods for side-channel verification. The second one is efficiently analyzing the cache behaviors using an SMT solver based symbolic technique, to avoid explicitly enumerating a large number of out-of-order executions. We developed a tool called **Spreca**. Our experimental evaluation on C programs that implement cryptographic algorithms shows that the symbolic method is effective in detecting OOE-related leaks and, at the same time, is significantly more scalable than explicit enumeration. 



## Overview of Spreca
There are two LLVM passes in **Spreca**: 
### Trace Generation Pass
``/SymTraceGen`` contains the trace generation pass:
In order to collect all the memory related instructions executed from the target program, we instrument our helper functions into the LLVM IR code: to print all instruction dependencies and (Symbolic) Load/Store addresses.
The flow of trace generation is as following:
```
Target.c (test program) ->Target.bc
TRACE_TEST.c (helper) -> TRACE_TEST.bc
(Link Target.bc and Trace_TEST.bc)
Test.bc
Test_instru.bc
Test_instru.s
Test_instru.o
```
Finally run ``Test_instru.o`` get the trace. Then the raw trace will be processed under fully associative cache setting given a cache configuration.

### Symbolic Predictive Analysis Pass
``/SymTraceGen`` contains the Symbolic Predictive Analysis pass:
It takes a (preprocessed) log file to analyze if there are leaks under OOE.

## System configurations

### Hardware Dependencies
Recommend at least 4G ram.

### Software Dependencies

OS: Ubuntu 20.04
Dependent Libraries: z3, libboost, clang-10, llvm-10, openssl

## Installation

Dependencies can be installed with install-deps.sh, simply run:
``.\install-deps.sh``

Install **Spreca**:
```
mkdir build
cd build 
cmake ..
make
```

## Usage

### Test programs
``Test`` contains small testing programs where shows how to use the tool. In the test program, the secret variables should be marked with ``__attribute__((annotate("mark")))``, e.g. in ``Test/test.c``, i is marked.
To generate all traces in the directory,  run:
```
cd Test
bash TraceGen.sh -all
```
For example:
```
opt-10 -load ../build/libLLVMPredictiveCacheAnalysis.so -symbocache -logpath=Traces/test_processed.log -mode=sym -cachesize=12 -cachelinesize=4 -cacheassoc=3 -windowsize=10  bc/test.bc
```
```-mode=[expone|sym]``` : symbolic or explicit mode.
```-cachesize=[8192]``` : cache size, default is 8k.
```-cachelinesize=[64]``` : cache line (block) size, default is 64.
```-cacheassoc=[128]``` : cache associativity, fully associativity for cache of 8k/64.
```-cacheassoc=[10]``` : sliding window size, default is 10.

### Crypto benchmarks

To run all benchmarks with 8k and window size=10 setting (table 2):
```
bash test_8k_10.sh
```
To run symbolic vs explicit algorithms for SEED:
```
bash explicit-vs-symbolic-SEED.sh
```
To collect all statistics:

```
cd crypto_test
bash TestStats.sh 8192 
bash leakingsites.sh
bash countlines.sh
```

Optional: To generate all traces for crypto benchmarks, run:
```
cd crypto_test
bash TraceGenSingleAll.sh
```
We recommend using the existed traces, as different runs may have different trace log files.


