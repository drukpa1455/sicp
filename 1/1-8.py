def improve(guess, x):
    return (x / (guess * guess) + 2 * guess) / 3

def good_enough(guess, x):
    return abs(guess * guess * guess - x) < 0.001

def cube_root_iter(guess, x):
    if good_enough(guess, x):
        return guess
    else:
        return cube_root_iter(improve(guess, x), x)

def cube_root(x):
    return cube
