#!/bin/bash

timeout 4h opt-10 -load build/libLLVMPredictiveCacheAnalysis.so -cachesize=8192 -cachelinesize=64 -cacheassoc=128 -symbocache -mode=sym -windowsize=2 -logpath=crypto_test/Traces/Cipher/seed_fully_processed.log crypto_test/bc/Cipher/seed-trace.bc

timeout 4h opt-10 -load build/libLLVMPredictiveCacheAnalysis.so -cachesize=8192 -cachelinesize=64 -cacheassoc=128 -symbocache -mode=sym -windowsize=4 -logpath=crypto_test/Traces/Cipher/seed_fully_processed.log crypto_test/bc/Cipher/seed-trace.bc

timeout 4h opt-10 -load build/libLLVMPredictiveCacheAnalysis.so -cachesize=8192 -cachelinesize=64 -cacheassoc=128 -symbocache -mode=sym -windowsize=6 -logpath=crypto_test/Traces/Cipher/seed_fully_processed.log crypto_test/bc/Cipher/seed-trace.bc

timeout 4h opt-10 -load build/libLLVMPredictiveCacheAnalysis.so -cachesize=8192 -cachelinesize=64 -cacheassoc=128 -symbocache -mode=sym -windowsize=8 -logpath=crypto_test/Traces/Cipher/seed_fully_processed.log crypto_test/bc/Cipher/seed-trace.bc

timeout 4h opt-10 -load build/libLLVMPredictiveCacheAnalysis.so -cachesize=8192 -cachelinesize=64 -cacheassoc=128 -symbocache -mode=sym -windowsize=10 -logpath=crypto_test/Traces/Cipher/seed_fully_processed.log crypto_test/bc/Cipher/seed-trace.bc

timeout 4h opt-10 -load build/libLLVMPredictiveCacheAnalysis.so -cachesize=8192 -cachelinesize=64 -cacheassoc=128 -symbocache -mode=expone -windowsize=2 -logpath=crypto_test/Traces/Cipher/seed_fully_processed.log crypto_test/bc/Cipher/seed-trace.bc

timeout 4h opt-10 -load build/libLLVMPredictiveCacheAnalysis.so -cachesize=8192 -cachelinesize=64 -cacheassoc=128 -symbocache -mode=expone -windowsize=4 -logpath=crypto_test/Traces/Cipher/seed_fully_processed.log crypto_test/bc/Cipher/seed-trace.bc

timeout 4h opt-10 -load build/libLLVMPredictiveCacheAnalysis.so -cachesize=8192 -cachelinesize=64 -cacheassoc=128 -symbocache -mode=expone -windowsize=6 -logpath=crypto_test/Traces/Cipher/seed_fully_processed.log crypto_test/bc/Cipher/seed-trace.bc


timeout 4h opt-10 -load build/libLLVMPredictiveCacheAnalysis.so -cachesize=8192 -cachelinesize=64 -cacheassoc=128 -symbocache -mode=expone -windowsize=8 -logpath=crypto_test/Traces/Cipher/seed_fully_processed.log crypto_test/bc/Cipher/seed-trace.bc

timeout 4h opt-10 -load build/libLLVMPredictiveCacheAnalysis.so -cachesize=8192 -cachelinesize=64 -cacheassoc=128 -symbocache -mode=expone -windowsize=10 -logpath=crypto_test/Traces/Cipher/seed_fully_processed.log crypto_test/bc/Cipher/seed-trace.bc



