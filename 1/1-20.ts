function gcd(a: number, b: number): number {
    // Computes the greatest common divisor of a and b using Euclid's algorithm.
    if (b === 0) {
        return a;
    } else {
        return gcd(b, a % b);
    }
}

const result = gcd(206, 40);
console.log(`GCD(206, 40) = ${result}`);