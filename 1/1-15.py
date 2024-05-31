from typing import Union

# Define the cube function
def cube(x: Union[int, float]) -> Union[int, float]:
    return x * x * x

# Define the p function
def p(x: Union[int, float]) -> Union[int, float]:
    return 3 * x - 4 * cube(x)

# Define the sine function
def sine(angle: Union[int, float]) -> Union[int, float]:
    if abs(angle) <= 0.1:
        return angle
    else:
        return p(sine(angle / 3.0))

# Evaluate sine(12.15)
result = sine(12.15)