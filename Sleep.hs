module Sleep where

import Language.Haskell.TH
import Control.Concurrent (threadDelay)

cnst :: Int -> String -> Q Exp
cnst n s = return (LamE (replicate n WildP) (LitE (StringL s)))

--sleep :: Int -> Q Exp
--sleep = return (LamE [WildP] (LamE ()))

heat :: Integer -> Integer
heat temperature = 2 ^ temperature

sleep1 :: Q Exp
sleep1 = return (LamE [] (LitE $ IntegerL $ 2 ^ 10000))
