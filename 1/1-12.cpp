int pascal(int row, int col) {
    // Base cases: leftmost and rightmost elements are always 1
    if (col == 0 || col == row) {
        return 1;
    }
    // Recursive case: sum of two elements from previous row
    return pascal(row - 1, col - 1) + pascal(row - 1, col);
}