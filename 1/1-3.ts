function sumOfSquaresOfTwoLargest(a: number, b: number, c: number): number {
    // Find the smallest value among a, b, and c
    const minVal = Math.min(a, b, c);
    // Compute the sum of the squares of all three numbers, then subtract the square of the smallest one
    return a * a + b * b + c * c - minVal * minVal;
}

console.log(sumOfSquaresOfTwoLargest(3, 2, 1));  // Should print 13
