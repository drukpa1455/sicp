function sqrtIter(guess: number, x: number): number {
    if (Math.abs(guess * guess - x) < 0.001) {
        return guess;
    } else {
        return sqrtIter((guess + x / guess) / 2, x);
    }
}

function squareRoot(x: number): number {
    return sqrtIter(1.0, x);
}

console.log(squareRoot(2.0));