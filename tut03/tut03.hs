import Prelude hiding (map)
data IntList = IntCons Int IntList | IntEmpty 
data List a  = Cons a (List a) | Empty

data Tree a = Branch a (Tree a) (Tree a) | Leaf a deriving (Show)

t1 = Leaf 5
t2 = Leaf 2
t3 = Branch 7 t1 t2
t4 = Branch 9 t3 t3
t5 = Branch 8 t4 (Leaf 2)

depth :: Tree a -> Int
depth (Leaf x) = 1
depth (Branch x l r) = 1 + min (depth l) (depth r)

paths :: Tree a -> Tree [a]
paths = paths' []

paths' :: [a] -> Tree a -> Tree [a]
paths' xs (Leaf x) = Leaf (xs ++ [x])
paths' xs (Branch x l r) = Branch (xs ++ [x]) 
                           (paths' (xs ++ [x] ) l)
                           (paths' (xs ++ [x] ) r)

tmap :: (a -> b) -> Tree a -> Tree b
tmap f (Leaf x)       = Leaf (f x)
tmap f (Branch x l r) = Branch (f x) (tmap f l) (tmap f r)

map f []     = []
map f (x:xs) = (f x) : map f xs


f :: [Int] -> Int
f xs = foldr (*) 1 (map (^2) (filter (\x -> x `mod` 2 == 0) xs))

f' = foldr (*) 1 . map (^2) . filter even




