fn sqrt_iter(guess: f64, x: f64) -> f64 {
    if (guess * guess - x).abs() < 0.001 {
        guess
    } else {
        sqrt_iter((guess + x / guess) / 2.0, x)
    }
}

fn square_root(x: f64) -> f64 {
    sqrt_iter(1.0, x)
}

fn main() {
    println!("{}", square_root(2.0))
}