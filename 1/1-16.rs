fn fast_expt_iter(b: f64, n: i32, a: f64) -> f64 {
    // Iterative exponentiation using successive squaring
    if n == 0 {
        a
    } else if n % 2 == 0 {
        fast_expt_iter(b * b, n / 2, a)
    } else {
        fast_expt_iter(b, n - 1, a * b)
    }
}

fn fast_expt(b: f64, n: i32) -> f64 {
    // Compute b^n using logarithmic number of steps
    fast_expt_iter(b, n, 1.0)
}

fn main() {
    let base = 2.0;
    let exponent = 10;
    let result = fast_expt(base, exponent);
    println!("{}^{} = {}", base, exponent, result);
}