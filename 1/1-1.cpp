#include <iostream>
using namespace std;

int main() {
    // Expression: 10
    cout << 10 << endl; // => 10

    // Expression: (+ 5 3 4)
    cout << 5 + 3 + 4 << endl; // => 12

    // Expression: (- 9 1)
    cout << 9 - 1 << endl; // => 8

    // Expression: (/ 6 2)
    cout << 6 / 2 << endl; // => 3

    // Expression: (+ (* 2 4) (- 4 6))
    cout << (2 * 4) + (4 - 6) << endl; // => 6

    // Define variables a and b
    int a = 3;
    int b = a + 1;

    // Expression: (+ a b (* a b))
    cout << a + b + (a * b) << endl; // => 19

    // Expression: (= a b)
    cout << (a == b) << endl; // => 0 (false)

    // Expression: (if (and (> b a) (< b (* a b))) b a)
    cout << ((b > a && b < (a * b)) ? b : a) << endl; // => 4

    // Expression: (cond ((= a 4) 6) ((= b 4) (+ 6 7 a)) (else 25))
    if (a == 4)
        cout << 6 << endl;
    else if (b == 4)
        cout << 6 + 7 + a << endl;
    else
        cout << 25 << endl; // => 16

    // Expression: (+ 2 (if (> b a) b a))
    cout << 2 + (b > a ? b : a) << endl; // => 6

    // Expression: (* (cond ((> a b) a) ((< a b) b) (else -1)) (+ a 1))
    int cond_result = (a > b) ? a : (a < b) ? b : -1;
    cout << cond_result * (a + 1) << endl; // => 16

    return 0;
}
