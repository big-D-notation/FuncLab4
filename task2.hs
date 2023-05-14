maxS :: [Int] -> Int
maxS (x : xs) = foldl max x xs
maxS [] = error "List must be non-empty."

main :: IO ()
main = do
  let numbers = [4, 8, 2, 10, 5]
  let result = maxS numbers
  putStrLn ("Maximum value: " ++ show result)
