#include <iostream>
#include <cmath>

double sqrt_iter(double guess, double x) {
    if (fabs(guess * guess - x) < 0.001)
        return guess;
    else
        return sqrt_iter((guess + x / guess) / 2, x);
}

double square_root(double x) {
    return sqrt_iter(1.0, x);
}

it main() {
    std::cout << square_root(2.0) << std::endl;
    return 0;
}