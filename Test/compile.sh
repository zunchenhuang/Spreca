#!/bin/bash



for file in *.c; do
    [ -f "$file" ] || continue
    echo "$file"
    clang-10 -O0 -emit-llvm -c $file
    filename="${file:0:-2}"
    echo "$filename"
    llvm-dis $filename.bc
    # lli -debug -force-interpreter $filename.bc &> $filename.log
done
