#!/bin/bash
appname=$1
filename1=""
filenmae2=""
echo $appname
echo $#

if [ "$#" -eq 2 ]; then
    filename1=$2
    echo "Two args $filename1"
    clang -O0 -emit-llvm -c -g $filename1.c -o bc/$filename1.bc
    llvm-dis bc/$filename1.bc -o ll/$filename1.ll
    llvm-link bc/$filename1.bc bc/TRACE_test.bc -o bc/$appname-trace.bc
fi

if [ "$#" -eq 3 ]; then
    echo "Three args"
    filename1=$2
    filename2=$3
    clang -O0 -emit-llvm -c -g $filename1.c -o bc/$filename1.bc
    clang -O0 -emit-llvm -c -g $filename2.c -o bc/$filename2.bc
    llvm-dis bc/$filename1.bc -o ll/$filename1.ll
    llvm-dis bc/$filename2.bc -o ll/$filename2.ll
    llvm-link bc/$filename1.bc bc/$filename2.bc bc/TRACE_test.bc -o bc/$appname-trace.bc
fi

opt -always-inline -load ../build/SymTraceGen/libLLVMSymTraceGen.so -symtracegen bc/$appname-trace.bc -instidpath=InstToID/$appname.txt -o bc/$appname-trace_instru.bc
llvm-dis bc/$appname-trace_instru.bc -o ll/$appname-trace_instru.ll
llc --relocation-model=pic bc/$appname-trace_instru.bc -o s/$appname-trace_instru.s
clang s/$appname-trace_instru.s -o o/$appname-trace_instru.o
./o/$appname-trace_instru.o > Traces/$appname.log
# python3 preprocess.py Traces/$appname.log Traces/$appname"_"processed.log
python3 preprocess_fully.py Traces/$appname.log Traces/$appname"_"fully.log
python3 preprocess.py Traces/$appname"_"fully.log Traces/$appname"_"fully"_"processed.log

