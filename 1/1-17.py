from typing import Union

def double(x: Union[int, float]) -> Union[int, float]:
    return x * 2

def halve(x: Union[int, float]) -> Union[int, float]:
    return x / 2

def multiply(a: Union[int, float], b: Union[int, float]) -> Union[int, float]:
    if b == 0:
        return 0
    elif b % 2 == 0:
        return multiply(double(a), halve(b))
    else:
        return a + multiply(a, b - 1)

if __name__ == "__main__":
    a = 5
    b = 7
    print(f"Multiplication of {a} and {b} is: {multiply(a, b)}")