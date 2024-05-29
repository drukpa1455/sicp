#include <iostream>
#include <cmath>

double improve(double guess, double x) {
    return ((x / (guess * guess)) + (2 * guess)) / 3.0;
}

bool good_enough(double guess, double x) {
    return std::fabs(guess * guess * guess - x) < 0.001;
}

double cube_root_iter(double guess, double x) {
    if (good_enough(guess, x))
        return guess;
    else
        return cube_root_iter(improve(guess, x), x);
}

double cube_root(double x) {
    return cube_root_iter(1.0, x);
}

int main() {
    std:cout << cube_root(27.0) << std::endl;
    return 0;
}