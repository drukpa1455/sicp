fn sum_of_squares_of_two_largest(a: f64, b: f64, c: f64) -> f64 {
    // Find the smallest value among a, b, and c
    let min_val = a.min(b).min(c);
    // Compute the sum of the squares of all three numbers, then subtract the square of the smallest one
    a * a + b * b + c * c - min_val * min_val
}

fn main() {
    println!("{}", sum_of_squares_of_two_largest(3.0, 2.0, 1.0));  // Should print 13.0
}
