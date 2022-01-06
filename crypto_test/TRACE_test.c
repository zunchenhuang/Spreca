#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <stdint.h>

void printDDep(int ID1, int ID2){
     printf("DDEP: SrcID: %d DestID: %d\n", ID1, ID2);
}

void printCDep(int ID1, int ID2){
     printf("CDEP: SrcID: %d DestID: %d\n", ID1, ID2);
}


void printStoreAddr(long long int addr, int ID, int LineLoc, int ColLoc) {
     printf("Store: 0x%llx ID: %d @Ln,Col: %d,%d\n", addr, ID, LineLoc, ColLoc);
}

void printLoadAddr(long long int addr, int ID, int LineLoc, int ColLoc) {
     printf("Load: 0x%llx ID: %d @Ln,Col: %d,%d\n", addr, ID, LineLoc, ColLoc);
}


void printSymStoreAddr(long long int addr, long long int addr_b, long long int addr_e, int stepSize, int ID, int LineLoc, int ColLoc) {
     printf("SymbolicStore: Concrete: 0x%llx Symbolic: From: 0x%llx To: 0x%llx StepSize: %d ID: %d @Ln,Col: %d,%d\n", addr, addr_b, addr_e, stepSize, ID, LineLoc, ColLoc);
}

void printSymLoadAddr(long long int addr, long long int addr_b, long long int addr_e, int stepSize, int ID, int LineLoc, int ColLoc) {
     printf("SymbolicLoad: Concrete: 0x%llx Symbolic: From: 0x%llx To: 0x%llx StepSize: %d ID: %d @Ln,Col: %d,%d\n", addr, addr_b, addr_e, stepSize, ID, LineLoc, ColLoc);
}

void printCounter(int counter) {
     printf("InstCounter: %d\n", counter);
}

