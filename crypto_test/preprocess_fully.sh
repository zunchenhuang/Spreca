#!/bin/bash


python3 preprocess_fully.py Traces/Cipher/aes_core.log Traces/Cipher/aes_core_fully.log
python3 preprocess_fully.py Traces/Cipher/des.log Traces/Cipher/des_fully.log
python3 preprocess_fully.py Traces/Cipher/seed.log Traces/Cipher/seed_fully.log
python3 preprocess_fully.py Traces/Cipher/camellia.log Traces/Cipher/camellia_fully.log
python3 preprocess_fully.py Traces/Cipher/chacha20.log Traces/Cipher/chacha20_fully.log
python3 preprocess_fully.py Traces/Cipher/idea.log Traces/Cipher/idea_fully.log

python3 preprocess_fully.py Traces/Hash/md5.log Traces/Hash/md5_fully.log
python3 preprocess_fully.py Traces/Hash/blake2.log Traces/Hash/blake2_fully.log
python3 preprocess_fully.py Traces/Hash/sha256.log Traces/Hash/sha256_fully.log
python3 preprocess_fully.py Traces/Hash/whirlpool.log Traces/Hash/whirlpool_fully.log
