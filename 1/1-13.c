#include <stdio.h>
#include <math.h>

// φ (phi) is the golden ratio, approximately 1.618. It is used because of its relation to the Fibonacci sequence.
const double phi = (1 + sqrt(5)) / 2;

// ψ (psi) is the negative reciprocal of φ, approximately -0.618. It is used in the proof to simplify the expression.
const double psi = (1 - sqrt(5)) / 2;

// Define the Fibonacci function using the formula Fib(n) = (φ^n - ψ^n) / √5
double fib(int n) {
    return (pow(phi, n) - pow(psi, n)) / sqrt(5);
}

int main() {
    printf("Fib(10) = %lf\n", fib(10));
    return 0;
}