fn improve(guess: f64, x: f64) -> f64 {
    (x / (guess * guess) + 2.0 * guess) / 3.0
}

fn good_enough(guess: g64, x: f64) -> bool {
    (guess * guess * guess - x).abs() < 0.001
}

fn cube_root_iter(guess: f64, x: f64) -> f64 {
    if good_enough(guess, x) {
        guess
    } else {
        cube_root_iter(improve(guess, x), x)
    }
}

fn cube_root(x: f64) -> f64 {
    cube_root_iter(1.0, x)
}

fn main() {
    println!("{}", cube_root(27.0));
}