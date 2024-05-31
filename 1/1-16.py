from typing import Union

def fast_expt_iter(b: Union[int, float], n: int, a:Union[int, float]) -> Union[int, float]:
    if n == 0:
        return a
    elif n % 2 == 0:
        return fast_expt_iter(b * b, n // 2, a)
    else:
        return fast_expt_iter(b, n - 1, a * b)

def fast_expt(b: Union[int, float], n: int) -> Union[int, float]:
    return fast_expt_iter(b, n, 1)

base = 2

exponent = 10

result = fast_expt(base, exponent)

print(f"{base}^{exponent} = {result}")