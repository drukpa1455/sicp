#include <stdio.h>

int p() {
    return p();  // Infinite recursion
}

int test(int x, int y) {
    if (x == 0)
        return 0;
    else
        return y;
}

int main() {
    // Uncommenting this will cause an infinite loop or stack overflow
    // printf("%d\n", test(0, p()));
    return 0;
}
