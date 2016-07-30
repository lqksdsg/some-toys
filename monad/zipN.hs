zip4 :: [a] -> [b] -> [c] -> [d] -> [(a,b,c,d)]
zip4 [] _ _ _ = []
zip4 _ [] _ _ = []
zip4 _ _ [] _ = []
zip4 _ _ _ [] = [] 
zip4 (a:ax) (b:bx) (c:cx) (d:dx) = (a,b,c,d):zip4 ax bx cx dx