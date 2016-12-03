prod [] = 1
prod (x:xs) = x * product xs

main = print $ prod [1,2,3,4,5,6]
