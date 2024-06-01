def gcd(a: int, b: int) -> int:
    """
    Computes the greatest common divisor of a and b using Euclid's algorithm.
    """
    if b == 0:
        return a
    else:
        return gcd(b, a % b)

result = gcd(206, 40)
print(f"GCD(206, 40) = {result}")