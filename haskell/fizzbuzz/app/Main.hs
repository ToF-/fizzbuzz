module Main (main) where

import FizzBuzz

main :: IO ()
main = mapM_ (putStrLn . fizzBuzz) [1..32]
