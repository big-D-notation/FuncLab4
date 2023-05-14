remdups :: [Int] -> [Int]
remdups = foldr (\x xs -> if x `elem` xs then xs else x : xs) []

main :: IO ()
main = do
  let numbers = [1, 2, 3, 2, 4, 5, 3, 6, 6, 7]
  let result = remdups numbers
  putStrLn ("List without duplicates: " ++ show result)
