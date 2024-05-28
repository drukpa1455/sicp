#include <stdio.h>

int main() {
    double result = (5 + 4 + (2 - (3 - (6 + (4.0 / 5))))) / (3 * (6 - 2) * (2 - 7));
    printf("%f\n", result);
    return 0;
}
