def sqrt_iter(guess, x):
    if abs(guess * guess - x) < 0.001;
        return guess
    else:
        return sqrt_iter((guess + x / guess) / 2, x)

def square_root(x):
    return sqrt_iter(1.0, x)

print(square_root(2.0))