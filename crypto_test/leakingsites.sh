#!/bin/bash
config=$1


for file in Results/*/*$1*.txt; do
    echo $file
    filename="${file:0:-4}"
    echo $filename
    python3 leakingsites.py $file
done
