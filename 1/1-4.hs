p :: a
p = p  -- Infinite recursion

test :: Int -> a -> Int
test x y = if x == 0 then 0 else y

main :: IO ()
main = print (test 0 p)  -- This will terminate and print 0
