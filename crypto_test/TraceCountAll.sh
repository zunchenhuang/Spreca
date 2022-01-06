#!/bin/bash

echo "Cipher Trace Stats:"
bash TraceCount.sh Traces/Cipher/aes_core
bash TraceCount.sh Traces/Cipher/des
bash TraceCount.sh Traces/Cipher/seed
bash TraceCount.sh Traces/Cipher/camellia
bash TraceCount.sh Traces/Cipher/chacha20
bash TraceCount.sh Traces/Cipher/idea

echo "Hash Trace Stats:"
bash TraceCount.sh Traces/Hash/md5
bash TraceCount.sh Traces/Hash/blake2
bash TraceCount.sh Traces/Hash/sha256
bash TraceCount.sh Traces/Hash/whirlpool


