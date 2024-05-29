function improve(guess: number, x: number): number {
    return (x / (guess * guess) + 2 * guess) / 3;
}

function goodEnough(guess: number, x: number): boolean {
    return Math.abs(guess * guess * guess - x) < 0.001;
}

function cubeRootIter(guess: number, x: number): number {
    if (goodEnough(guess, x)) {
        return guess;
    } else {
        return cubeRootIter(improve(guess, x), x);
    }
}

function cubeRoot(x: number): number {
    return cubeRootIter(1.0, x);
}

console.log(cubeRoot(27.0));
