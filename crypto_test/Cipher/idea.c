/*
 * Copyright 1995-2016 The OpenSSL Project Authors. All Rights Reserved.
 *
 * Licensed under the OpenSSL license (the "License").  You may not use
 * this file except in compliance with the License.  You can obtain a copy
 * in the file LICENSE in the source distribution or at
 * https://www.openssl.org/source/license.html
 */

#include <openssl/idea.h>
#include "idea_local.h"
#include <string.h>
#include <openssl/opensslv.h>

static IDEA_INT inverse(unsigned int xin);
void IDEA_set_encrypt_key(const unsigned char *key, IDEA_KEY_SCHEDULE *ks) __attribute__((always_inline))
{
    int i;
    register IDEA_INT *kt, *kf, r0, r1, r2;

    kt = &(ks->data[0][0]);
    n2s(key, kt[0]);
    n2s(key, kt[1]);
    n2s(key, kt[2]);
    n2s(key, kt[3]);
    n2s(key, kt[4]);
    n2s(key, kt[5]);
    n2s(key, kt[6]);
    n2s(key, kt[7]);

    kf = kt;
    kt += 8;
    for (i = 0; i < 6; i++) {
        r2 = kf[1];
        r1 = kf[2];
        *(kt++) = ((r2 << 9) | (r1 >> 7)) & 0xffff;
        r0 = kf[3];
        *(kt++) = ((r1 << 9) | (r0 >> 7)) & 0xffff;
        r1 = kf[4];
        *(kt++) = ((r0 << 9) | (r1 >> 7)) & 0xffff;
        r0 = kf[5];
        *(kt++) = ((r1 << 9) | (r0 >> 7)) & 0xffff;
        r1 = kf[6];
        *(kt++) = ((r0 << 9) | (r1 >> 7)) & 0xffff;
        r0 = kf[7];
        *(kt++) = ((r1 << 9) | (r0 >> 7)) & 0xffff;
        r1 = kf[0];
        if (i >= 5)
            break;
        *(kt++) = ((r0 << 9) | (r1 >> 7)) & 0xffff;
        *(kt++) = ((r1 << 9) | (r2 >> 7)) & 0xffff;
        kf += 8;
    }
}

void IDEA_set_decrypt_key(IDEA_KEY_SCHEDULE *ek, IDEA_KEY_SCHEDULE *dk) __attribute__((always_inline))
{
    int r;
    register IDEA_INT *fp, *tp, t;

    tp = &(dk->data[0][0]);
    fp = &(ek->data[8][0]);
    for (r = 0; r < 9; r++) {
        *(tp++) = inverse(fp[0]);
        *(tp++) = ((int)(0x10000L - fp[2]) & 0xffff);
        *(tp++) = ((int)(0x10000L - fp[1]) & 0xffff);
        *(tp++) = inverse(fp[3]);
        if (r == 8)
            break;
        fp -= 6;
        *(tp++) = fp[4];
        *(tp++) = fp[5];
    }

    tp = &(dk->data[0][0]);
    t = tp[1];
    tp[1] = tp[2];
    tp[2] = t;

    t = tp[49];
    tp[49] = tp[50];
    tp[50] = t;
}

/* taken directly from the 'paper' I'll have a look at it later */
static IDEA_INT inverse(unsigned int xin)  __attribute__((always_inline))
{
    long n1, n2, q, r, b1, b2, t;

    if (xin == 0)
        b2 = 0;
    else {
        n1 = 0x10001;
        n2 = xin;
        b2 = 1;
        b1 = 0;

        do {
            r = (n1 % n2);
            q = (n1 - r) / n2;
            if (r == 0) {
                if (b2 < 0)
                    b2 = 0x10001 + b2;
            } else {
                n1 = n2;
                n2 = r;
                t = b2;
                b2 = b1 - q * b2;
                b1 = t;
            }
        } while (r != 0);
    }
    return (IDEA_INT)b2;
}

void IDEA_ecb_encrypt(const unsigned char *in, unsigned char *out,
                      IDEA_KEY_SCHEDULE *ks)  __attribute__((always_inline))
{
    unsigned long l0, l1, d[2];

    n2l(in, l0);
    d[0] = l0;
    n2l(in, l1);
    d[1] = l1;
    IDEA_encrypt(d, ks);
    l0 = d[0];
    l2n(l0, out);
    l1 = d[1];
    l2n(l1, out);
    l0 = l1 = d[0] = d[1] = 0;
}

void IDEA_encrypt(unsigned long *d, IDEA_KEY_SCHEDULE *key __attribute__((annotate("mark"))))  __attribute__((always_inline))
{
    register IDEA_INT *p;
    register unsigned long x1, x2, x3, x4, t0, t1, ul;

    x2 = d[0];
    x1 = (x2 >> 16);
    x4 = d[1];
    x3 = (x4 >> 16);

    p = &(key->data[0][0]);

    E_IDEA(0);
    E_IDEA(1);
    E_IDEA(2);
    E_IDEA(3);
    E_IDEA(4);
    E_IDEA(5);
    E_IDEA(6);
    E_IDEA(7);

    x1 &= 0xffff;
    idea_mul(x1, x1, *p, ul);
    p++;

    t0 = x3 + *(p++);
    t1 = x2 + *(p++);

    x4 &= 0xffff;
    idea_mul(x4, x4, *p, ul);

    d[0] = (t0 & 0xffff) | ((x1 & 0xffff) << 16);
    d[1] = (x4 & 0xffff) | ((t1 & 0xffff) << 16);
}
/*
static const unsigned char key[] = {
    0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77,
    0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff,
    0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
    0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f
};
*/
unsigned char *key = (unsigned char *)"01234567890123456789012345678901";
//unsigned char *key = (unsigned char *)"0123456789012345";
int main()
{
    IDEA_KEY_SCHEDULE eks;
    IDEA_KEY_SCHEDULE dks;
    unsigned char *text=(unsigned char *)"testing idea enc";
    unsigned char enc_out[256];
    IDEA_set_encrypt_key(key, &eks);
    
    const char charset[] = "!#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~";
    size_t length = 94;    
    int size = 1024;
    size_t round = 8;
    int i;
    char *buff = malloc(sizeof(char) * size * round);
    for (i = 0; i < size * round; i+= 64) {
      int key = rand() % length;
      buff[i] = charset[key];
    }
    IDEA_ecb_encrypt(text, enc_out, &eks);    
    
}
