#include <iostream>

int gcd(int a, int b) {
    // Computes the greatest common divisor of a and b using Euclid's algorithm.
    if (b == 0) {
        return a;
    } else {
        return gcd(b, a % b);
    }
}

int main() {
    int result = gcd(206, 40);
    std::cout << "GCD(206, 40) = " << result << std::endl;
    return 0;
}