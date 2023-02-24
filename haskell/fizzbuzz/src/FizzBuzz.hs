module FizzBuzz
    ( fizzBuzz
    ) where

fizzBuzz :: Integer -> String
fizzBuzz x = case foldl conc "" tags of
               "" -> show x
               s -> s
  where
    conc t (f,s) | f x = t ++ s
                 | otherwise = t

    tags = [((`isMultiple` 3), "fizz")
           ,((`isMultiple` 5), "buzz")]

    isMultiple n m = n `mod` m == 0
