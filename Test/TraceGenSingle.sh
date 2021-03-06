#!/bin/bash
filename=$1
echo $filename

clang-10 -O0 -emit-llvm -c -g $filename.c -o bc/$filename.bc
llvm-dis-10 bc/$filename.bc -o ll/$filename.ll
llvm-link-10 bc/$filename.bc bc/TRACE_test.bc -o bc/$filename-trace.bc
llvm-dis-10 bc/$filename-trace.bc -o ll/$filename-trace.ll
opt-10 -load ../build/SymTraceGen/libLLVMSymTraceGen.so -debug-only=cachemodel -symtracegen bc/$filename-trace.bc -instidpath=InstToID/$filename.txt -o bc/$filename-trace_instru.bc
llvm-dis-10 bc/$filename-trace_instru.bc -o ll/$filename-trace_instru.ll
llc-10 --relocation-model=pic bc/$filename-trace_instru.bc -o s/$filename-trace_instru.s
clang-10 s/$filename-trace_instru.s -o o/$filename-trace_instru.o
./o/$filename-trace_instru.o > Traces/$filename.log
python3 preprocess.py Traces/$filename.log Traces/$filename"_"processed.log

#clang -emit-llvm -O0 -c TRACE_test.c -o bc/TRACE_test.bc
#llvm-dis bc/TRACE_test.bc -o ll/TRACE_test.ll
#llvm-link bc/test1.bc bc/TRACE_test.bc -o bc/test1-trace.bc

