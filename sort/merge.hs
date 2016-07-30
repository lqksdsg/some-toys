merge [] [] = []
merge [] xs = xs
merge xs [] = xs
merge (x:xs) (y:ys) = if x<y then x:(merge xs (y:ys)) else y:(merge (x:xs) ys)

mergeSort [] = []
mergeSort (x:[]) = (x:[])
mergeSort xs = merge (mergeSort a) (mergeSort b)
 where 
  (a,b) = split xs
  split xs = (take mid xs, drop mid xs)
  mid = (length xs) `div` 2
