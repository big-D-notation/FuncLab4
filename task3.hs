minS :: [Int] -> Int
minS (x : xs) = foldr min x xs
minS [] = error "List must be non-empty."

main :: IO ()
main = do
  let numbers = [4, 8, 2, 10, 5]
  let result = minS numbers
  putStrLn ("Minimum value: " ++ show result)
