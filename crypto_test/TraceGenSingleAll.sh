#!/bin/bash

bash TraceGenSingle.sh Cipher/aes Cipher/aes
bash TraceGenSingle.sh Cipher/des Cipher/des_enc Cipher/des_set_key
bash TraceGenSingle.sh Cipher/seed Cipher/seed
bash TraceGenSingle.sh Cipher/camellia Cipher/camellia
bash TraceGenSingle.sh Cipher/chacha20 Cipher/chacha_enc_ctr32
bash TraceGenSingle.sh Cipher/idea Cipher/idea
bash TraceGenSingle.sh Cipher/aria Cipher/aria
bash TraceGenSingle.sh Cipher/sm4 Cipher/sm4

bash TraceGenSingle.sh Hash/md5 Hash/md5_dgst Hash/md5_one
bash TraceGenSingle.sh Hash/sha256 Hash/sha256
bash TraceGenSingle.sh Hash/whirlpool Hash/wp_dgst Hash/wp_block
bash TraceGenSingle.sh Hash/blake2 Hash/blake2b

