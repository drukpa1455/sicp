from typing import Tuple

def fib_matrix_mult(p: int, q: int) -> Tuple[int, int]:
    """Compute the transformation T_pq applied twice"""
    p_prime = p * p + q * q
    q_prime = 2 * p * q + q * q
    return p_prime, q_prime

def fib_fast(n: int) -> int:
    """Compute the nth Fibonacci number in logarithmic time"""
    def fib_iter(a: int, b: int, p: int, q: int, count: int) -> int:
        if count == 0:
            return b
        elif count % 2 == 0:
            p_prime, q_prime = fib_matrix_mult(p, q)
            return fib_iter(a, b, p_prime, q_prime, count // 2)
        else:
            return fib_iter(b * q + a * q + a * p, b * p + a * q, p, q, count - 1)

    return fib_iter(1, 0, 0, 1, n)

n = int(input("Enter the value of n: "))
print(f"The {n}th Fibonacci number is: {fib_fast(n)}")