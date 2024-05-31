#include <cmath>

// Define the cube function
double cube(double x) {
    return x * x * x;
}

// Define the p function
double p(double x) {
    return 3 * x - 4 * cube(x);
}

// Define the sine function
double sine(double angle) {
    if (std::abs(angle) <= 0.1) {
        return angle;
    } else {
        return p(sine(angle / 3.0));
    }
}

// Evaluate sine(12.15)
double result = sine(12.15);