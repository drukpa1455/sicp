-- Define the cube function
cube :: Double -> Double
cube x = x * x * x

-- Define the p function
p :: Double -> Double
p x = 3 * x - 4 * cube x

-- Define the sine function
sine :: Double -> Double
sine angle
    | abs angle <= 0.1 = angle
    | otherwise = p (sine (angle / 3.0))

-- Evaluate sine 12.15
result = sine 12.15