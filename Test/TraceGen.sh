#!/bin/bash
command=$1
echo $command

if [[ $command == "-compile" || $command == "-all" ]]; then
    echo "----------------COMPILING----------------"
    for file in *.c; do
        [ -f "$file" ] || continue
        echo "$file"
        filename="${file:0:-2}"
        echo "$filename"
	    if [ $filename == "TRACE_test" ]; then
                clang-10 -O0 -emit-llvm -c $file -o bc/$filename.bc
            else 
                clang-10 -O0 -emit-llvm -g -c $file -o bc/$filename.bc
                llvm-dis-10 bc/$filename.bc -o ll/$filename.ll
	    fi
        # lli -debug -force-interpreter $filename.bc &> $filename.log
    done
fi

if [[ $command == "-link" || $command == "-all" ]]; then
    echo "----------------LINKING----------------"
    rm bc/*-trace_instru.bc
    rm bc/*-trace.bc
    for file in bc/*.bc; do
        [ -f "$file" ] || continue
        echo "$file"
        filename="${file:3:-3}"
        echo "$filename"
        if [ $filename == "TRACE_test" ]; then
            echo "Skip"
        else    
            echo "Not Skip"
            llvm-link-10 bc/$filename.bc bc/TRACE_test.bc -o bc/$filename-trace.bc
	    llvm-dis-10 bc/$filename-trace.bc -o ll/$filename-trace.ll
            opt-10 -load ../build/SymTraceGen/libLLVMSymTraceGen.so -symtracegen bc/$filename-trace.bc -instidpath=InstToID/$filename.txt -o bc/$filename-trace_instru.bc
            llvm-dis-10 bc/$filename-trace_instru.bc -o ll/$filename-trace_instru.ll
            llc-10 --relocation-model=pic bc/$filename-trace_instru.bc -o s/$filename-trace_instru.s
            clang-10 -g s/$filename-trace_instru.s -o o/$filename.o
        fi
    done
fi

if [[ $command == "-trace" || $command == "-all" ]]; then
    echo "----------------TRACE GENERATING----------------"
    for file in o/*.o; do
        filename="${file:2:-2}"
        echo $file
        ./$file > Traces/$filename.log
        python3 preprocess.py Traces/$filename.log Traces/$filename"_"processed.log
    done
fi

if [ $command == "-clean" ]; then
    echo "------------------CLEANING----------------------"
    rm *.bc *.o *.ll *.bc
    rm bc/*.bc  
    rm s/*.s
    rm o/*.o
    rm Traces/*.log
    rm ll/*.ll
    rm InOrderStates/*.txt
    rm InstToID/*.txt
    rm Results/*.txt
fi
