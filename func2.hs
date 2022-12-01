#!/usr/bin/env stack
{- stack
   script
   --resolver lts-19.25
   --package random
-}

module Main (main) where

import GameLib
import Data.Function ((&))

main = do
  putStrLn "Functional variant, backward call."
  n <- secret
  diff n guess & verbose & attempts 5 n & farewell
