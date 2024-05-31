#include <iostream>
#include <cmath>

// φ (phi) is the golden ratio, approximately 1.618. It is used because of its relation to the Fibonacci sequence.
const double phi = (1 + std::sqrt(5)) / 2;

// ψ (psi) is the negative reciprocal of φ, approximately -0.618. It is used in the proof to simplify the expression.
const double psi = (1 - std::sqrt(5)) / 2;

// Define the Fibonacci function using the formula Fib(n) = (φ^n - ψ^n) / √5
double fib(int n) {
    return (std::pow(phi, n) - std::pow(psi, n)) / std::sqrt(5);
}

int main() {
    std::cout << "Fib(10) = " << fib(10) << std::endl;
    return 0;
}