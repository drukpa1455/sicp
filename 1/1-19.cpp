#include <iostream>
#include <utility>

// Function to compute the transformation T_pq applied twice
std::pair<int, int> fibMatrixMult(int p, int q) {
    int pPrime = p * p + q * q;
    int qPrime = 2 * p * q + q * q;
    return std::make_pair(pPrime, qPrime);
}

// Function to compute the nth Fibonacci number in logarithmic time
int fibFast(int n) {
    // Helper function to perform the iterative process
    auto fibIter = [](int a, int b, int p, int q, int count) {
        if (count == 0)
            return b;
        else if (count % 2 == 0) {
            auto [pPrime, qPrime] = fibMatrixMult(p, q);
            return fibIter(a, b, pPrime, qPrime, count / 2);
        } else {
            return fibIter(b * q + a * q + a * p, b * p + a * q, p, q, count - 1);
        }
    };

    return fibIter(1, 0, 0, 1, n);
}

int main() {
    int n;
    std::cout << "Enter the value of n: ";
    std::cin >> n;
    std::cout << "The " << n << "th Fibonacci number is: " << fibFast(n) << std::endl;
    return 0;
}