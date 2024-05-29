sqrtIter :: Double -> Double -> Double
sqrtIter guess x
    | abs (guess * guess - x) < 0.001 = guess
    | otherwise = sqrtIter ((guess + x / guess) / 2) x

squareRoot :: Double -> Double
squareRoot x = sqrtIter 1.0 x

main :: IO ()
main = print (squareRoot 2.0)