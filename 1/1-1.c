#include <stdio.h>

int main() {
    // Expression: 10
    printf("%d\n", 10); // => 10

    // Expression: (+ 5 3 4)
    printf("%d\n", 5 + 3 + 4); // => 12

    // Expression: (- 9 1)
    printf("%d\n", 9 - 1); // => 8

    // Expression: (/ 6 2)
    printf("%d\n", 6 / 2); // => 3

    // Expression: (+ (* 2 4) (- 4 6))
    printf("%d\n", (2 * 4) + (4 - 6)); // => 6

    // Define variables a and b
    int a = 3;
    int b = a + 1;

    // Expression: (+ a b (* a b))
    printf("%d\n", a + b + (a * b)); // => 19

    // Expression: (= a b)
    printf("%d\n", a == b); // => 0 (false)

    // Expression: (if (and (> b a) (< b (* a b))) b a)
    printf("%d\n", (b > a && b < (a * b)) ? b : a); // => 4

    // Expression: (cond ((= a 4) 6) ((= b 4) (+ 6 7 a)) (else 25))
    if (a == 4)
        printf("%d\n", 6);
    else if (b == 4)
        printf("%d\n", 6 + 7 + a);
    else
        printf("%d\n", 25); // => 16

    // Expression: (+ 2 (if (> b a) b a))
    printf("%d\n", 2 + (b > a ? b : a)); // => 6

    // Expression: (* (cond ((> a b) a) ((< a b) b) (else -1)) (+ a 1))
    int cond_result = (a > b) ? a : (a < b) ? b : -1;
    printf("%d\n", cond_result * (a + 1)); // => 16

    return 0;
}
