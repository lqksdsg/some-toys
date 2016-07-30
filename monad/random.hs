import System.Random
threeCoins:: StdGen -> (Bool,Bool,Bool)
threeCoins gen = 
 let
  (firstCoin,newGen) = random gen
  (secondCoin,newGen1) = random newGen
  (thirdCoin,newGen2) = random newGen1
 in
  (firstCoin,secondCoin,thirdCoin)