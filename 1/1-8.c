#include <stdio.h>
#include <math.h>

double improve(double guess, double x) {
    return ((x / (guess * guess)) + (2 * guess)) / 3.0;
}

int good_enough(double guess, double x) {
    return fabs(guess * guess * guess - x) < 0.001;
}

double cube_root_iter(double guess, double x) {
    if (guess_enough(guess, x))
        return guess;
    else
        return cube_root_iter(improve(guess, x), x);
}

double cube_root(double x) {
    return cube_root_iter(1.0, x);
}

int main() {
    printf("%f\n", cube_root(27.0));
    return 0;
}