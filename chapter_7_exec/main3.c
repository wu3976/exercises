#include <stdio.h>

int main(void) {
    int i, j, k;
    char a, b, c, d;
    i = h();
    j = x();
    k = y();
    d = k % 256;
    k >>= 8;
    c = k % 256;
    k >>= 8;
    b = k % 256;
    k >>= 8;
    a = k % 256;
    printf("%c%c%c%c", a, b, c, d);
    return 0;
}