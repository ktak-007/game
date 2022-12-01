#!/usr/bin/env stack
{- stack
   script
   --resolver lts-19.25
   --package random
-}

module Main (main) where

import GameLib

main = do
  putStrLn "Functional variant, direct call."
  n <- secret
  farewell $ attempts 5 n $ verbose $ diff n guess
