fac :: Int -> Int
fac n = if n > 0 then n * fac (n-1)
                 else 1
-- I am a comment.		 
{-
fac n | n > 1     = n * fac (n-1)
      | otherwise = 1
-}

sumFacs :: Int -> Int -> Int
sumFacs n m = if n > m then 0
              else fac n + sumFacs (n+1) m 
