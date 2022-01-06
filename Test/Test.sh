#!/bin/bash
START=$(date +%s.%N)
# Demo cache ages transfer function
time opt -load ../build/libLLVMPredictiveCacheAnalysis.so -symbocache -logpath=Traces/age_processed.log  -cachesize=16 -cachelinesize=4 -cacheassoc=1 -memorymodel=PSO  bc/age.bc
 
DemoTime=$(date +%s.%N)

# Control 1: 23_0
time opt -load ../build/libLLVMPredictiveCacheAnalysis.so -symbocache -logpath=Traces/control1_processed.log  -testinstid=23_0 -cachesize=16 -cachelinesize=4 -cacheassoc=1 -memorymodel=PSO bc/control1.bc
Control1Time=$(date +%s.%N)

# Control 2: 25_0
time opt -load ../build/libLLVMPredictiveCacheAnalysis.so -symbocache -logpath=Traces/control2_processed.log  -testinstid=25_0 -cachesize=16 -cachelinesize=4 -cacheassoc=1 -memorymodel=TSO -debug bc/control2.bc
Control2Time=$(date +%s.%N)

time opt -load ../build/libLLVMPredictiveCacheAnalysis.so -symbocache -logpath=Traces/control2_processed.log  -testinstid=28_0 -cachesize=16 -cachelinesize=4 -cacheassoc=1 -memorymodel=TSO -debug bc/control2-1.bc

time opt -load ../build/libLLVMPredictiveCacheAnalysis.so -symbocache -logpath=Traces/control2-2_processed.log  -testinstid=35_0 -cachesize=16 -cachelinesize=4 -cacheassoc=1 -memorymodel=TSO -debug bc/control2-2.bc

time opt -load ../build/libLLVMPredictiveCacheAnalysis.so -symbocache -logpath=Traces/control11_processed.log  -testinstid=77_0 -cachesize=16 -cachelinesize=4 -cacheassoc=1 -memorymodel=TSO -debug bc/control11.bc


# Test1 
time opt -load ../build/libLLVMPredictiveCacheAnalysis.so -symbocache -logpath=Traces/test1_processed.log  -cachesize=32 -cachelinesize=4 -cacheassoc=1 -memorymodel=PSO -testinstid=20_0 bc/test1.bc
Test1Time=$(date +%s.%N)

# Test3
time opt -load ../build/libLLVMPredictiveCacheAnalysis.so -symbocache -logpath=Traces/test3_processed.log  -cachesize=32 -cachelinesize=4 -cacheassoc=1 -memorymodel=PSO -testinstid=39_0 bc/test3.bc
Test3Time=$(date +%s.%N)

# Data1 21_0
time opt -load ../build/libLLVMPredictiveCacheAnalysis.so -symbocache -logpath=Traces/data1_processed.log  -cachesize=32 -cachelinesize=4 -cacheassoc=1 -memorymodel=PSO -testinstid=21_0 bc/data1.bc
Data1Time=$(date +%s.%N)

# Control2
# time opt -load ../build/libLLVMPredictiveCacheAnalysis.so -symbocache -logpath=Traces/control2_processed.log  -cachesize=32 -cachelinesize=4 -cacheassoc=1 -memorymodel=PSO -testinstid=77_0 bc/control2.bc





END=$(date +%s.%N)
TOTALDIFF=$(echo "$END - $START" | bc -l)
Demo=$(echo "$DemoTime - $START" | bc -l )
echo $Demo | awk '{printf "Demo seconds: %.3f seconds\n", $1}'
Control1=$(echo "$Control1Time - $DemoTime" | bc -l )
echo $Control1 | awk '{printf "Control1 seconds: %.3f seconds\n", $1}'
Test1=$(echo "$Test1Time - $DemoTime" | bc -l )
echo $Test1 | awk '{printf "Test1 seconds: %.3f seconds\n", $1}'
Test3=$(echo "$Test3Time - $Test1Time" | bc -l)
echo $Test3 | awk '{printf "Test3 seconds: %.3f seconds\n", $1}'
Data1=$(echo "$Data1Time - $Test3Time" | bc -l)
echo $Data1 | awk '{printf "Data1 seconds: %.3f seconds\n", $1}'
TestCaseN=4
AVG=$(echo "$TOTALDIFF / $TestCaseN" | bc -l )
echo $AVG | awk '{printf "Avg seconds: %.3f seconds\n", $1}' 
# printf 'Average Second: %f\n' "${AVG}"
echo $TOTALDIFF | awk '{printf "Total seconds: %.3f seconds\n", $TOTALDIFF}'
