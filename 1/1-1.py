from typing import Union

a: int = 3
b: int = a + 1

print(10)
print(5 + 3 + 4)
print(9 - 1)
print(6 // 2)  # Using integer division
print(2 * 4 + (4 - 6))
print(a + b + a * b)
print(a == b)
print(b if b > a and b < a * b else a)
print(6 if a == 4 else 6 + 7 + a if b == 4 else 25)
print(2 + (b if b > a else a))
print((a if a > b else b if a < b else -1) * (a + 1))
