fastExptIter :: Double -> Int -> Double -> Double
fastExptIter b n a
    | n == 0    = a
    | even n    = fastExptIter (b * b) (n `div` 2) a
    | otherwise = fastExptIter b (n - 1) (a * b)

fastExpt :: Double -> Int -> Double
fastExpt b n = fastExptIter b n 1.0

main :: IO ()
main = do
    let base = 2.0
        exponent = 10
        result = fastExpt base exponent
    putStrLn $ show base ++ "^" ++ show exponent ++ " = " ++ show result