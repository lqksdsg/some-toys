module Main (main) where
import SimpleJSON
import PutJSON

main = putJValue $ JObject [("hehe",JObject[("barf",JArray [JNumber 44554,JNumber 3445])])]
