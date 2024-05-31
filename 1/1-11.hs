-- Recursive process
fRecursive :: Int -> Int
fRecursive n
    | n < 3     = n  -- base case: if n < 3, return n
    | otherwise = fRecursive (n - 1) +  -- recursive case: if n >= 3, compute f(n-1)
                  2 * fRecursive (n - 2) +  -- compute 2 * f(n-2)
                  3 * fRecursive (n - 3)  -- compute 3 * f(n-3) and sum the results

-- Iterative process
fIterative :: Int -> Int
fIterative n
    | n < 3     = n  -- base case: if n < 3, return n
    | otherwise = fIter 2 1 0 (n - 2)  -- start the iterative process with initial values

fIter :: Int -> Int -> Int -> Int -> Int
fIter a b c count
    | count == 0 = a  -- base case: if count reaches 0, return the value of a
    | otherwise  = fIter (a + 2 * b + 3 * c)  -- compute the next value of a
                         a  -- update b to the previous value of a
                         b  -- update c to the previous value of b
                         (count - 1)  -- decrement the count