function double(x: number): number {
    return x * 2;
}

function halve(x: number): number {
    return x / 2;
}

function multiply(a: number, b: number): number {
    if (b === 0) {
        return 0;
    } else if (b % 2 === 0) {
        return multiply(double(a), halve(b));
    } else {
        return a + multiply(a, b - 1);
    }
}

const a = 5;
const b = 7;
console.log(`Multiplication of ${a} and ${b} is: ${multiply(a, b)}`);