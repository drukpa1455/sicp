improve :: Double -> Double -> Double
improve guess x = (x / (guess * guess) + 2 * guess) / 3

goodEnough :: Double -> Double -> Bool
goodEnough guess x = abs (guess * guess * guess - x) < 0.001

cubeRootIter :: Double -> Double -> Double
cubeRootIter guess x
    | goodEnough guess x = guess
    | otherwise = cubeRootIter (improve guess x) x

cubeRoot :: Double -> Double
cubeRoot x = cubeRootIter 1.0 x

main :: IO ()
main = print (cubeRoot 27.0)