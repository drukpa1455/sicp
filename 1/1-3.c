#include <stdio.h>
#include <math.h>

double sum_of_squares_of_two_largest(double a, double b, double c) {
    // Find the smallest value among a, b, and c
    double min_val = fmin(fmin(a, b), c);
    // Compute the sum of the squares of all three numbers, then subtract the square of the smallest one
    return a * a + b * b + c * c - min_val * min_val;
}

int main() {
    printf("%f\n", sum_of_squares_of_two_largest(3, 2, 1));  // Should print 13.000000
    return 0;
}
