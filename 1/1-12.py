def pascal(row: int, col: int) -> int:
    # Base cases: leftmost and rightmost elements are always 1
    if col == 0 or col == row:
        return 1
    # Recursive case: sum of two elements from previous row
    return pascal(row - 1, col - 1) + pascal(row - 1, col)