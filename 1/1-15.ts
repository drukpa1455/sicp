// Define the cube function
function cube(x: number): number {
    return x * x * x;
}

// Define the p function
function p(x: number): number {
    return 3 * x - 4 * cube(x);
}

// Define the sine function
function sine(angle: number): number {
    if (Math.abs(angle) <= 0.1) {
        return angle;
    } else {
        return p(sine(angle / 3.0));
    }
}

// Evaluate sine(12.15)
const result = sine(12.15);