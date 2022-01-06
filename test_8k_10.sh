#!/bin/bash

timeout 4h opt-10 -load build/libLLVMPredictiveCacheAnalysis.so -cachesize=8192 -cachelinesize=64 -cacheassoc=128 -symbocache -mode=sym -windowsize=10 -logpath=crypto_test/Traces/Cipher/aes_fully_processed.log crypto_test/bc/Cipher/aes-trace.bc

timeout 4h opt-10 -load build/libLLVMPredictiveCacheAnalysis.so -cachesize=8192 -cachelinesize=64 -cacheassoc=128 -symbocache -mode=sym -windowsize=10 -logpath=crypto_test/Traces/Cipher/des_fully_processed.log crypto_test/bc/Cipher/des-trace.bc

timeout 4h opt-10 -load build/libLLVMPredictiveCacheAnalysis.so -cachesize=8192 -cachelinesize=64 -cacheassoc=128 -symbocache -mode=sym -windowsize=10 -logpath=crypto_test/Traces/Cipher/seed_fully_processed.log crypto_test/bc/Cipher/seed-trace.bc

timeout 4h opt-10 -load build/libLLVMPredictiveCacheAnalysis.so -cachesize=8192 -cachelinesize=64 -cacheassoc=128 -symbocache -mode=sym -windowsize=10 -logpath=crypto_test/Traces/Cipher/camellia_fully_processed.log crypto_test/bc/Cipher/camellia-trace.bc

timeout 4h opt-10 -load build/libLLVMPredictiveCacheAnalysis.so -cachesize=8192 -cachelinesize=64 -cacheassoc=128 -symbocache -mode=sym -windowsize=10 -logpath=crypto_test/Traces/Cipher/chacha20_fully_processed.log crypto_test/bc/Cipher/chacha20-trace.bc

timeout 4h opt-10 -load build/libLLVMPredictiveCacheAnalysis.so -cachesize=8192 -cachelinesize=64 -cacheassoc=128 -symbocache -mode=sym -windowsize=10 -logpath=crypto_test/Traces/Cipher/idea_fully_processed.log crypto_test/bc/Cipher/idea-trace.bc

timeout 4h opt-10 -load build/libLLVMPredictiveCacheAnalysis.so -cachesize=8192 -cachelinesize=64 -cacheassoc=128 -symbocache -mode=sym -windowsize=10 -logpath=crypto_test/Traces/Cipher/aria_fully_processed.log crypto_test/bc/Cipher/aria-trace.bc

timeout 4h opt-10 -load build/libLLVMPredictiveCacheAnalysis.so -cachesize=8192 -cachelinesize=64 -cacheassoc=128 -symbocache -mode=sym -windowsize=10 -logpath=crypto_test/Traces/Cipher/sm4_fully_processed.log crypto_test/bc/Cipher/sm4-trace.bc

timeout 4h opt-10 -load build/libLLVMPredictiveCacheAnalysis.so -cachesize=8192 -cachelinesize=64 -cacheassoc=128 -symbocache -mode=sym -windowsize=10 -logpath=crypto_test/Traces/Hash/blake2_fully_processed.log crypto_test/bc/Hash/blake2-trace.bc

timeout 4h opt-10 -load build/libLLVMPredictiveCacheAnalysis.so -cachesize=8192 -cachelinesize=64 -cacheassoc=128 -symbocache -mode=sym -windowsize=10 -logpath=crypto_test/Traces/Hash/md5_fully_processed.log crypto_test/bc/Hash/md5-trace.bc

timeout 4h opt-10 -load build/libLLVMPredictiveCacheAnalysis.so -cachesize=8192 -cachelinesize=64 -cacheassoc=128 -symbocache -mode=sym -windowsize=10 -logpath=crypto_test/Traces/Hash/sha256_fully_processed.log crypto_test/bc/Hash/sha256-trace.bc

timeout 4h opt-10 -load build/libLLVMPredictiveCacheAnalysis.so -cachesize=8192 -cachelinesize=64 -cacheassoc=128 -symbocache -mode=sym -windowsize=10 -logpath=crypto_test/Traces/Hash/whirlpool_fully_processed.log crypto_test/bc/Hash/whirlpool-trace.bc
