from typing import Callable

def first_denomination(kinds_of_coins: int) -> int:
    # Return the value of the first coin denomination based on the number of coin types
    if kinds_of_coins == 1:
        return 1
    elif kinds_of_coins == 2:
        return 5
    elif kinds_of_coins == 3:
        return 10
    elif kinds_of_coins == 4:
        return 25
    elif kinds_of_coins == 5:
        return 50
    else:
        return 0

def cc(amount: int, kinds_of_coins: int) -> int:
    # Base case: If the amount is 0, there is only one way to make change (no coins)
    if amount == 0:
        return 1
    # If the amount is less than 0 or there are no more coin types, return 0
    if amount < 0 or kinds_of_coins == 0:
        return 0
    # Recursive case: Combine the number of ways to make change without using the current coin type
    # and the number of ways to make change using the current coin type
    return cc(amount, kinds_of_coins - 1) + cc(amount - first_denomination(kinds_of_coins), kinds_of_coins)

def count_change(amount: int) -> int:
    # Call the cc function with the given amount and 5 kinds of coins
    return cc(amount, 5)

amount = 11
ways = count_change(amount)
print(f"Number of ways to make change for {amount} cents: {ways}")