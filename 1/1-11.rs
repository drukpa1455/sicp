// Recursive process
fn f_recursive(n: i32) -> i32 {
    if n < 3 {
        n  // base case: if n < 3, return n
    } else {
        f_recursive(n - 1) +  // recursive case: if n >= 3, compute f(n-1)
        2 * f_recursive(n - 2) +  // compute 2 * f(n-2)
        3 * f_recursive(n - 3)  // compute 3 * f(n-3) and sum the results
    }
}

// Iterative process
fn f_iterative(n: i32) -> i32 {
    if n < 3 {
        n  // base case: if n < 3, return n
    } else {
        let mut a = 2;
        let mut b = 1;
        let mut c = 0;
        for _ in 0..(n - 2) {  // iterate n-2 times
            let temp = a;  // store the current value of a
            a = a + 2 * b + 3 * c;  // compute the next value of a
            c = b;  // update c to the previous value of b
            b = temp;  // update b to the previous value of a
        }
        a  // return the final value of a
    }
}