def p() -> int:
    return p()  # Infinite recursion

def test(x: int, y: int) -> int:
    if x == 0:
        return 0
    else:
        return y

# Uncommenting this will cause an infinite loop or stack overflow
# print(test(0, p()))
