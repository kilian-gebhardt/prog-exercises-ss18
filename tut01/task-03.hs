import Prelude hiding (rem)

prod :: [Int] -> Int
prod [] = 1
prod (x:xs) = x * prod xs


rev :: [Int] -> [Int]
rev []     = []
rev (x:xs) = rev xs ++ [x]

rev_fast :: [Int] -> [Int]
rev_fast xs = rev' xs []
   where rev' [] ys = ys
         rev' (x:xs) ys = rev' xs (x:ys)

rem :: Int -> [Int] -> [Int]
rem _ [] = []
rem x (y:ys) | x == y    = rem x ys
             | otherwise = y : rem x ys

isOrd :: [Int] -> Bool
isOrd []      = True
isOrd [x]     = True
isOrd (a:b:cs)= if a <= b then isOrd (b:cs)
                          else False

merge :: [Int] -> [Int] -> [Int]
--merge [] [] = [] 
{-merge [] bs = bs
merge as [] = as
-}
merge (a:as) (b:bs) | a < b = a : merge as (b:bs)
                    | True  = b : merge (a:as) bs
merge as bs = as ++ bs



