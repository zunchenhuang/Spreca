/*
 * Copyright 1995-2016 The OpenSSL Project Authors. All Rights Reserved.
 *
 * Licensed under the OpenSSL license (the "License").  You may not use
 * this file except in compliance with the License.  You can obtain a copy
 * in the file LICENSE in the source distribution or at
 * https://www.openssl.org/source/license.html
 */

#include <stdio.h>
#include <string.h>
#include <openssl/md5.h>
#include <openssl/crypto.h>

#ifdef CHARSET_EBCDIC
# include <openssl/ebcdic.h>
#endif

unsigned char *MD5(const unsigned char *d, size_t n, unsigned char *md) __attribute__((always_inline))
{
    MD5_CTX c;
    static unsigned char m[MD5_DIGEST_LENGTH];

    if (md == NULL)
        md = m;
    if (!MD5_Init(&c))
        return NULL;
#ifndef CHARSET_EBCDIC
    MD5_Update(&c, d, n);
#else
    {
        char temp[1024];
        unsigned long chunk;

        while (n > 0) {
            chunk = (n > sizeof(temp)) ? sizeof(temp) : n;
            ebcdic2ascii(temp, d, chunk);
            MD5_Update(&c, temp, chunk);
            n -= chunk;
            d += chunk;
        }
    }
#endif
    MD5_Final(md, &c);
    OPENSSL_cleanse(&c, sizeof(c)); /* security consideration */
    return md;
}

/*
 * Pointer to memset is volatile so that compiler must de-reference
 * the pointer and can't assume that it points to any function in
 * particular (such as memset, which it then might further "optimize")
 */
typedef void *(*memset_t)(void *, int, size_t);

static volatile memset_t memset_func = memset;

void OPENSSL_cleanse(void *ptr, size_t len) __attribute__((always_inline))
{
    memset_func(ptr, 0, len);
}

int main()
{
    const char charset[] = "!#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~";
    size_t length = 94;    
    int size = 1024;
    size_t round = 9;
    int i;
    
    char *input = malloc(sizeof(char) * size * round);
    for (size_t n = 0; n < size * round; n += 64) {
        int key = rand() % length;
        input[n] = charset[key];
    }

    unsigned char ibuf[] = "compute,md5!";
    unsigned char hash[MD5_DIGEST_LENGTH];
    MD5(ibuf, strlen(ibuf), hash);
}
