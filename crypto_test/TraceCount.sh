#!/bin/bash
tracefile=$1

echo -e "	$1 Trace: "
echo -n -e "	 	 Length: "
grep InstCount $1.log | tail -1
    #| cut -d' ' -f2

echo -n -e "	 	 #Unique Addr: "
grep '#Unique' $1_processed.log | cut -d' ' -f3

length=$(grep InstCount $1.log | tail -1 | cut -d' ' -f2)

echo -n -e "	 	 Load: "
grep Load $1.log | wc -l 

load=$(grep Load $1.log | wc -l )

echo -n -e "	 	 Store: "
grep Store $1.log | wc -l 

store=$(grep Store $1.log | wc -l )

echo -n -e "	 	 Non-memory: "
echo "$length - $load - $store" | bc

nonmem=$(echo "$length - $load - $store" | bc)

echo -n -e "	 	 Load/Store Ratio: "
echo "scale=3;$load/$store" | bc

echo -n -e "	 	 Memory/Non-Memory Ratio: "
echo "scale=3;($load+$store)/$nonmem" | bc
