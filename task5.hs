pasc :: Int -> [[Int]]
pasc n = take n triangle
  where
    triangle = iterate nextRow [1]
    nextRow row = zipWith (+) (0 : row) (row ++ [0])

prpasc :: [[Int]] -> String
prpasc triangle = unlines $ map formatRow triangle
  where
    formatRow :: [Int] -> String
    formatRow row = format maxPadding (map show row)
      where
        maxPadding = maximum $ map (length . show) row
        format :: Int -> [String] -> String
        format maxPadding elements = replicate (maxPadding - padding) ' ' ++ catWith " " elements
          where
            padding = maximum $ map length elements

    catWith :: String -> [String] -> String
    catWith _ [] = ""
    catWith _ [x] = x
    catWith sep (x : xs) = foldl (\a b -> a ++ sep ++ b) x xs

main :: IO ()
main = do
  putStr $ prpasc $ pasc 5
