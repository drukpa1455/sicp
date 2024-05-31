#include <stdio.h>

double fast_expt_iter(double b, int n, double a) {
    // Iterative exponentiation using successive squaring
    if (n == 0) {
        return a;
    } else if (n % 2 == 0) {
        return fast_expt_iter(b * b, n / 2, a);
    } else {
        return fast_expt_iter(b, n - 1, a * b);
    }
}

double fast_expt(double b, int n) {
    // Compute b^n using logarithmic number of steps
    return fast_expt_iter(b, n, 1.0);
}

int main() {
    double base = 2.0;
    int exponent = 10;
    double result = fast_expt(base, exponent);
    printf("%.0f^%d = %.0f\n", base, exponent, result);
    return 0;
}