def multiply(a: int, b: int) -> int:
    if b == 0:
        return 0
    elif b % 2 == 0:
        # If b is even, recursively multiply a by b//2 and double the result
        return 2 * multiply(a, b // 2)
    else:
        # If b is odd, recursively multiply a by b-1 and add a to the result
        return a + multiply(a, b - 1)

result = multiply(5, 7)
print(f"Result: {result}")