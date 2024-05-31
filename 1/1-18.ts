function multiply(a: number, b: number): number {
    if (b === 0) {
        return 0;
    } else if (b % 2 === 0) {
        // If b is even, recursively multiply a by b/2 and double the result
        return 2 * multiply(a, b / 2);
    } else {
        // If b is odd, recursively multiply a by b-1 and add a to the result
        return a + multiply(a, b - 1);
    }
}

const result = multiply(5, 7);
console.log(`Result: ${result}`);