// Define the cube function
fn cube(x: f64) -> f64 {
    x * x * x
}

// Define the p function
fn p(x: f64) -> f64 {
    3.0 * x - 4.0 * cube(x)
}

// Define the sine function
fn sine(angle: f64) -> f64 {
    if angle.abs() <= 0.1 {
        angle
    } else {
        p(sine(angle / 3.0))
    }
}

// Evaluate sine(12.15)
let result = sine(12.15);