pascal :: Int -> Int -> Int
pascal _ 0 = 1                 -- Base case: leftmost element is always 1
pascal row col
    | col == row = 1           -- Base case: rightmost element is always 1
    | otherwise = pascal (row - 1) (col - 1) + pascal (row - 1) col   -- Recursive case