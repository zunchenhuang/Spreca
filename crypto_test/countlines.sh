#!usr/bin/bash
echo "AES"
python3 countlines.py Traces/Cipher/aes.log
python3 countlines.py Traces/Cipher/aes_fully.log
echo "DES"
python3 countlines.py Traces/Cipher/des.log
python3 countlines.py Traces/Cipher/des_fully.log
echo "SEED"
python3 countlines.py Traces/Cipher/seed.log
python3 countlines.py Traces/Cipher/seed_fully.log
echo "Camelia"
python3 countlines.py Traces/Cipher/camellia.log
python3 countlines.py Traces/Cipher/camellia_fully.log
echo "Chacha20"
python3 countlines.py Traces/Cipher/chacha20.log
python3 countlines.py Traces/Cipher/chacha20_fully.log
echo "IDEA"
python3 countlines.py Traces/Cipher/idea.log
python3 countlines.py Traces/Cipher/idea_fully.log
echo "aria"
python3 countlines.py Traces/Cipher/aria.log
python3 countlines.py Traces/Cipher/aria_fully.log
echo "sm4"
python3 countlines.py Traces/Cipher/sm4.log
python3 countlines.py Traces/Cipher/sm4_fully.log

echo "md5"
python3 countlines.py Traces/Hash/md5.log
python3 countlines.py Traces/Hash/md5_fully.log
echo "Blake2"
python3 countlines.py Traces/Hash/blake2.log
python3 countlines.py Traces/Hash/blake2_fully.log
echo "sha256"
python3 countlines.py Traces/Hash/sha256.log
python3 countlines.py Traces/Hash/sha256_fully.log
echo "Whirlpool"
python3 countlines.py Traces/Hash/whirlpool.log
python3 countlines.py Traces/Hash/whirlpool_fully.log
