#!/bin/bash


python3 preprocess.py Traces/Cipher/aes_core_fully.log Traces/Cipher/aes_core_fully_processed.log
python3 preprocess.py Traces/Cipher/des_fully.log Traces/Cipher/des_fully_processed.log
python3 preprocess.py Traces/Cipher/seed_fully.log Traces/Cipher/seed_fully_processed.log
python3 preprocess.py Traces/Cipher/camellia_fully.log Traces/Cipher/camellia_fully_processed.log
python3 preprocess.py Traces/Cipher/chacha20_fully.log Traces/Cipher/chacha20_fully_processed.log
python3 preprocess.py Traces/Cipher/idea_fully.log Traces/Cipher/idea_fully_processed.log

python3 preprocess.py Traces/Hash/md5_fully.log Traces/Hash/md5_fully_processed.log
python3 preprocess.py Traces/Hash/blake2_fully.log Traces/Hash/blake2_fully_processed.log
python3 preprocess.py Traces/Hash/sha256_fully.log Traces/Hash/sha256_fully_processed.log
python3 preprocess.py Traces/Hash/whirlpool_fully.log Traces/Hash/whirlpool_fully_processed.log
