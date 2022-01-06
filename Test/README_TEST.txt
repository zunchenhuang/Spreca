This document contains instructions on my small test cases to test my tool:
    object:
    result expectation:
        DDEP:
        CDEP:
    commands:

addr.c :
    object:
    result expectation:
        DDEP:
        CDEP:
    commands:

alias.c :
    object:
    result expectation:
        DDEP: 4 < 5 < 15  < 19, 17 < 19, 5 < 7, 19 < 12, 19 < 10, 12 < 15
        CDEP: 7 < 10, 7 < 12, 7 < 15, 7 < 17, 7 < 19
    commands:

control1.c
    object:
    result expectation: 
        DDEP: 4 < 5 < 6 < 11 < 13 < 14 < 15
        CDEP: 6 < 11
    commands:
        opt -load ../build/libLLVMPredictiveCacheAnalysis.so -symbocache -logpath=Traces/control1_processed.log  -cachesize=16 -cachelinesize=4 -cacheassoc=4 -memorymodel=TSO -windowsize=6  bc/control1-trace.bc


control2.c
    object:
    result expectation:
        DDEP: 4 < 5 < 6 < 12 < 13 < 15
        CDEP: 6 < 12, 6 < 13
    commands:
        opt -load ../build/libLLVMPredictiveCacheAnalysis.so -symbocache -logpath=Traces/control2_processed.log  -cachesize=16 -cachelinesize=4 -cacheassoc=4 -memorymodel=TSO -windowsize=6  bc/control2-trace.bc
        opt -load ../build/libLLVMPredictiveCacheAnalysis.so -symbocache -logpath=Traces/control2_processed.log  -cachesize=12 -cachelinesize=4 -cacheassoc=4 -memorymodel=TSO -windowsize=6  bc/control2-trace.bc
        
data1.c
    object:
    result expectation:
        DDEP: 4 < 5 < 7 < 9 < 10 < 11 < 12 < 13, 6 < 7, 8 < 9, 7 < 8, 5 < 13
        CDEP: 
    commands:
        opt -load ../build/libLLVMPredictiveCacheAnalysis.so -symbocache -logpath=Traces/data1_processed.log  -cachesize=28 -cachelinesize=4 -cacheassoc=7 -memorymodel=TSO -windowsize=6  bc/data1-trace.bc

data4.c
    object:
    result expectation:
        DDEP: 5 < 7 < 9 < 13 < 15 < 16 < 17 < 19 < 20, 8 < 9, 9 < 10, 8 < 20
        CDEP: 10 < 13
    commands:
        opt -load ../build/libLLVMPredictiveCacheAnalysis.so -symbocache -logpath=Traces/data4_processed.log  -cachesize=32 -cachelinesize=4 -cacheassoc=8 -memorymodel=TSO -windowsize=10  bc/data4-trace.bc

data6.c
    object:
    result expectation:
        DDEP: 5 < 7 < 9 < 15 < 17 < 18 < 19 < 25 < 26, 8 < 9, 9 < 10, 20 < 25, 21 < 25, 22 < 25, 18 < 21, 17 < 20, 19 < 22, 8 < 26
        CDEP: 10 < 15
    commands:

