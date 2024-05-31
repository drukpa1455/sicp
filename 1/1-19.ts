function fibMatrixMult(p: number, q: number): [number, number] {
  // Compute the transformation T_pq applied twice
  const pPrime = p * p + q * q;
  const qPrime = 2 * p * q + q * q;
  return [pPrime, qPrime];
}

function fibFast(n: number): number {
  // Compute the nth Fibonacci number in logarithmic time
  function fibIter(a: number, b: number, p: number, q: number, count: number): number {
    if (count === 0) {
      return b;
    } else if (count % 2 === 0) {
      const [pPrime, qPrime] = fibMatrixMult(p, q);
      return fibIter(a, b, pPrime, qPrime, count / 2);
    } else {
      return fibIter(b * q + a * q + a * p, b * p + a * q, p, q, count - 1);
    }
  }

  return fibIter(1, 0, 0, 1, n);
}

const n = parseInt(prompt("Enter the value of n: ") || "0", 10);
console.log(`The ${n}th Fibonacci number is: ${fibFast(n)}`);