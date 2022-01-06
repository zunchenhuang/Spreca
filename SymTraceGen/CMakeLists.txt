#//
#// Created by phil on 3/28/21.
#//

project(Symbolic_Trace_Generator)

cmake_minimum_required(VERSION 3.8)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(LLVM REQUIRED CONFIG)

add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})

if( NOT LLVM_REQUIRES_RTTI )
if( NOT LLVM_REQUIRES_EH )
set(LLVM_EXPORTED_SYMBOL_FILE ${CMAKE_CURRENT_SOURCE_DIR}/Hello.exports)
endif()
endif()

if(WIN32 OR CYGWIN)
set(LLVM_LINK_COMPONENTS Core Support)
endif()

add_library( LLVMSymTraceGen MODULE
        SymTraceGen.cpp
        ../Analysis/SchedulingConstraints.h
        ../Analysis/SchedulingConstraints.cpp
)