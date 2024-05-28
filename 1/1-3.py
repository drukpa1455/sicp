from typing import Union

def sum_of_squares_of_two_largest(a: Union[int, float], b: Union[int, float], c: Union[int, float]) -> Union[int, float]:
    # Find the smallest value among a, b, and c
    min_val = min(a, b, c)
    # Compute the sum of the squares of all three numbers, then subtract the square of the smallest one
    return a * a + b * b + c * c - min_val * min_val

print(sum_of_squares_of_two_largest(3, 2, 1))  # Should print 13
