#include <iostream>

int p() {
    return p();  // Infinite recursion
}

int test(int x, int y) {
    if (x == 0)
        return 0;
    else
        return y;
}

int main() {
    // Uncommenting this will cause an infinite loop or stack overflow
    // std::cout << test(0, p()) << std::endl;
    return 0;
}
