// Recursive process
function fRecursive(n: number): number {
    if (n < 3) {
        return n;  // base case: if n < 3, return n
    } else {
        return fRecursive(n - 1) +  // recursive case: if n >= 3, compute f(n-1)
               2 * fRecursive(n - 2) +  // compute 2 * f(n-2)
               3 * fRecursive(n - 3);  // compute 3 * f(n-3) and sum the results
    }
}

// Iterative process
function fIterative(n: number): number {
    if (n < 3) {
        return n;  // base case: if n < 3, return n
    } else {
        let a = 2, b = 1, c = 0;  // initialize variables a, b, c
        for (let i = 0; i < n - 2; i++) {  // iterate n-2 times
            const temp = a;  // store the current value of a
            a = a + 2 * b + 3 * c;  // compute the next value of a
            c = b;  // update c to the previous value of b
            b = temp;  // update b to the previous value of a
        }
        return a;  // return the final value of a
    }
}