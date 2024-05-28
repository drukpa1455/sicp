function p(): number {
    return p();  // Infinite recursion
}

function test(x: number, y: number): number {
    if (x === 0) {
        return 0;
    } else {
        return y;
    }
}

// Uncommenting this will cause an infinite loop or stack overflow
// console.log(test(0, p()));
