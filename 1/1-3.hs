sumOfSquaresOfTwoLargest :: (Ord a, Num a) => a -> a -> a -> a
sumOfSquaresOfTwoLargest a b c =
    let minVal = min a (min b c)  -- Find the smallest value
    in a * a + b * b + c * c - minVal * minVal  -- Subtract the square of the smallest value

main :: IO ()
main = print (sumOfSquaresOfTwoLargest 3 2 1)  -- Should print 13
