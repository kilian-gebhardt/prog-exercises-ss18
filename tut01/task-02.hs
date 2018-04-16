fib :: Int -> Int
--fib 0 = 1
--fib 1 = 1

fib n | n == 0 || n == 1 = 1
fib n = fib (n-1) + fib (n-2)

fib_fast n = fib' n 1 1
fib' n f1 f2 | n == 0 = f1
fib' n f1 f2 | n > 0  = fib' (n-1) f2 (f1 + f2)

fibs :: [Integer]
fibs = fibg 1 1
    where fibg m n = m : fibg n (m + n)
