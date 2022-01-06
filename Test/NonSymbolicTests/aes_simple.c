int A0[8] = {7, 4, 1, 3, 0, 2, 5, 6};
int A1[8] = {2, 3, 5, 6, 1, 7, 0, 4};

void encrypt(int key  __attribute__((annotate("mark"))), int *in) __attribute__((always_inline))
{
  int *rk;
  rk = &key;
  int s0, s1, t0, t1;
  s0 = (*in ^ *rk) % 8;
  s1 = (*(in + 1) ^ *rk) % 8;
  
  t0 = A0[s0] ^ A1[s1];
  t1 = A0[s1] ^ A1[s0];
}

int main() {
    int key = 5;
    int in[] = {0, 1};
    encrypt(key, in);
}
