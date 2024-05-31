// φ (phi) is the golden ratio, approximately 1.618. It is used because of its relation to the Fibonacci sequence.
const PHI: f64 = (1.0 + 5.0_f64.sqrt()) / 2.0;

// ψ (psi) is the negative reciprocal of φ, approximately -0.618. It is used in the proof to simplify the expression.
const PSI: f64 = (1.0 - 5.0_f64.sqrt()) / 2.0;

// Define the Fibonacci function using the formula Fib(n) = (φ^n - ψ^n) / √5
fn fib(n: i32) -> f64 {
    (PHI.powi(n) - PSI.powi(n)) / 5.0_f64.sqrt()
}

fn main() {
    println!("Fib(10) = {}", fib(10));
}