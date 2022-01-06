#include <stdio.h>
#include <assert.h>

int A[3];

int main() {

  int index = 1 __attribute__((annotate("mark")));
   
  //assert(index < 3 && index >= 0);
  /* accessGlobalVarByIndex(&index); */
  if (A[0] > 0){}
  if (A[1] > 0){}
  if (A[2] > 0){}
// Scretely set A[index] into 1
  A[index] = 1;
// Write 0 into index
  index = -1;
  return 0;
}

/* void accessGlobalVarByIndex(int *index){ */
/*   if (A[0] > 0) */
/*     printf("A[0] is greater than 0. \n"); */
/*   if (A[1] > 0) */
/*     printf("A[0] is greater than 0. \n"); */
/*   if (A[2] > 0) */
/*     printf("A[0] is greater than 0. \n"); */
/* // Scretely set A[index] into 1 */
/*   A[*index] = 1; */

/* // Write 0 into index */
/*   *index = -1; */
/* } */

