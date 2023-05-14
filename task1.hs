lexord :: String -> String -> Int
lexord s1 s2 = case compare s1 s2 of
  LT -> -1
  EQ -> 0
  GT -> 1

main :: IO ()
main = do
  let result1 = lexord "abc" "def"
      result2 = lexord "abc" "abd"
      result3 = lexord "abc" "ab"
      result4 = lexord "abc" "abcd"
      result5 = lexord "abc" "abc"
  putStrLn ("lexord \"abc\" \"def\": " ++ show result1)
  putStrLn ("lexord \"abc\" \"abd\": " ++ show result2)
  putStrLn ("lexord \"abc\" \"ab\": " ++ show result3)
  putStrLn ("lexord \"abc\" \"abcd\": " ++ show result4)
  putStrLn ("lexord \"abc\" \"abc\": " ++ show result5)
  