-- Prática 03 de Haskell
-- Nome: Andriza Campanhol

--01
add10toall :: [Int] -> [Int]
add10toall list = [x + 10 | x <- list]

--02
multN :: Int -> [Int] -> [Int]
multN n list = [x*n | x <- list]

--03
multN' :: Int -> [Int] -> [Int]
multN' n list = map (\x -> x * n) list

--04
applyExpr :: [Int] -> [Int]
applyExpr list = [3*x+2 | x <- list]

--05
applyExpr' :: [Int] -> [Int]
applyExpr' list = map (\x -> x * 3 + 2) list

--06
addSuffix :: String -> [String] -> [String]
addSuffix suf strlist = [x ++ suf | x <- strlist]

--07
selectgt5 :: [Int] -> [Int]
selectgt5 list = [x | x <- list, x > 5]

--08
--sum -> computes a sum of all elements in the list
sumOdds :: [Int] -> Int
--sumOdds list = sum ([x | x <- list, x `mod` 2 == 1])
sumOdds list = sum ([x | x <- list, odd x])

--09
sumOdds' :: [Int] -> Int
--sumOdds' list = sum (filter(\x -> x `mod` 2 == 1) list)
sumOdds' list = sum (filter(\x -> odd x) list)

--10
selectExpr :: [Int] -> [Int]
--selectExpr list = [x | x <- list, x `mod` 2 == 0, x >= 20, x <= 50]
selectExpr list = [x | x <- list, even x, x >= 20, x <= 50]

--11
countShorts :: [String] -> Int
countShorts strlist = length ([x | x <- strlist, length x < 5])

--12
calcExpr :: [Float] -> [Float]
calcExpr list = [x^2/2 | x <- list, x > 10]

--13
trSpaces :: String -> String
trSpaces str = [if x == ' ' then '-' else x | x <- str] 

--14
selectSnd :: [(Int,Int)] -> [Int]
selectSnd tupla = [snd x | x <- tupla]

--15
dotProd :: [Int] -> [Int] -> Int
--dotProd list1 list2 = sum ([x*y | (x, y) <- zip list1 list2])
dotProd list1 list2 = sum ([fst x * snd x | x <- zip list1 list2])