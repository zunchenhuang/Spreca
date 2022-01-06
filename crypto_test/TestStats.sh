#!/bin/bash
windowSize=$1
cacheConfig=$2


for file in Results/Cipher/*$1*$2*.txt; do
    [ -f "$file" ] || continue
    length=$(grep -i -w 'TRACE SIZE' $file | cut -d' ' -f5)
    echo "$file"
    echo  "    Mem Ops: $length"
    store=$(grep -i 'LD/ST: 1' $file | wc -l)
    echo  "    Store Ops: $store"
    load=$(grep -i 'LD/ST: 0' $file | wc -l)
    echo  "    Load Ops: $load"
    
    sat=$(grep -w 'SAT' $file | wc -l)
    echo  "    SAT: $sat"
    unsat=$(grep -w 'UNSAT' $file | wc -l)
    echo  "    UNSAT: $unsat"
    invoke=$(echo $sat+$unsat | bc)
    echo  "    Z3 Invokes: $invoke"
    ctime=$(grep "Total time" $file)
    echo  "    $ctime"
done

for file in Results/Hash/*$1*$2*.txt; do
    [ -f "$file" ] || continue
    length=$(grep -i -w 'TRACE SIZE' $file | cut -d' ' -f5)
    echo "$file"
    echo  "    Mem Ops: $length"
    store=$(grep -i 'LD/ST: 1' $file | wc -l)
    echo  "    Store Ops: $store"
    load=$(grep -i 'LD/ST: 0' $file | wc -l)
    echo  "    Load Ops: $load"
    sat=$(grep -w 'SAT' $file | wc -l)
    echo  "    SAT: $sat"
    unsat=$(grep -w 'UNSAT' $file | wc -l)
    echo  "    UNSAT: $unsat"
    invoke=$(echo "$sat+$unsat" | bc)
    echo  "    Z3 Invokes: $invoke $file"
    ctime=$(grep "Total time" $file)
    echo  "    $ctime"
done


