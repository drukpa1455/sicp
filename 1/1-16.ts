function fastExptIter(b: number, n: number, a: number): number {
    // Iterative exponentiation using successive squaring
    if (n === 0) {
        return a;
    } else if (n % 2 === 0) {
        return fastExptIter(b * b, Math.floor(n / 2), a);
    } else {
        return fastExptIter(b, n - 1, a * b);
    }
}

function fastExpt(b: number, n: number): number {
    // Compute b^n using logarithmic number of steps
    return fastExptIter(b, n, 1);
}

const base = 2;
const exponent = 10;
const result = fastExpt(base, exponent);
console.log(`${base}^${exponent} = ${result}`);