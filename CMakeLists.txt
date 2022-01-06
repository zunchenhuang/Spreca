# If we don't need RTTI or EH, there's no reason to export anything
# from the hello plugin.
project(PrectiveAnalysis)

cmake_minimum_required(VERSION 3.8)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(FINDZ3_CMD "whereis libz3 | cut -d ' ' -f2")
set(whereis_cmd "whereis")
set(whereis_arg "libz3")
execute_process(COMMAND ${whereis_cmd} ${whereis_arg} OUTPUT_VARIABLE Z3_LIB)
#set(pipe_cmd "|")
#set(cut_cmd "cut")
#set(cut_arg1 "-d")
#set(cut_arg2 "' '")
#set(cut_arg3 "-f2")
#set(FINDZ3_CMD ${whereis_cmd} ${whereis_arg} ${pipe_cmd} ${cut_cmd} ${cut_arg1} ${cut_arg2} ${cut_arg3})
#set(FINDZ3_CMD "whereis libz3 | cut -d ' ' -f2")
#MESSAGE("COMMAND: ${FINDZ3_CMD}")
#execute_process(COMMAND ${FINDZ3_CMD} OUTPUT_VARIABLE Z3_LIB)
MESSAGE( STATUS "CMD_OUTPUT:" ${Z3_LIB})
string(REGEX REPLACE "libz3: " "" Z3_LIB_DIR ${Z3_LIB})
string(REGEX REPLACE "\n" "" Z3_LIB_DIR ${Z3_LIB_DIR})
MESSAGE( STATUS "Z3_LIB_DIR:" ${Z3_LIB_DIR})
# FIND_PACKAGE(Z3 COMPONENTS REQUIRED)
FIND_PACKAGE(Boost 1.71 COMPONENTS REQUIRED)
INCLUDE_DIRECTORIES( ${Boost_INCLUDE_DIR} ${Boost_LIBRARY_DIR})

find_package(LLVM 10.0 REQUIRED CONFIG)

add_definitions(${LLVM_DEFINITIONS})
add_subdirectory(SymTraceGen)
include_directories(${LLVM_INCLUDE_DIRS})

if( NOT LLVM_REQUIRES_RTTI )
    if( NOT LLVM_REQUIRES_EH )
        set(LLVM_EXPORTED_SYMBOL_FILE ${CMAKE_CURRENT_SOURCE_DIR}/Hello.exports)
    endif()
endif()

if(WIN32 OR CYGWIN)
    set(LLVM_LINK_COMPONENTS Core Support)
endif()

add_library( LLVMPredictiveCacheAnalysis MODULE
        Analysis/CacheModel.h
        Analysis/SchedulingConstraints.cpp
        Analysis/SchedulingConstraints.h
        SymCache/SymCache.h
        SymCache/SymCache.cpp
        ExpCache/ExpCache.cpp
        ExpCache/ExpCache.h
        SymbolicCachePass.cpp
        )

target_link_libraries(LLVMPredictiveCacheAnalysis ${Z3_LIB_DIR})
