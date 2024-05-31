#include <iostream>

int double_int(int x) {
    return x * 2;
}

int halve_int(int x) {
    return x / 2;
}

int multiply(int a, int b) {
    if (b == 0) {
        return 0;
    } else if (b % 2 == 0) {
        return multiply(double_int(a), halve_int(b));
    } else {
        return a + multiply(a, b - 1);
    }
}

int main() {
    int a = 5, b = 7;
    std::cout << "Multiplication of " << a << " and " << b << " is: " << multiply(a, b) << std::endl;
    return 0;
}