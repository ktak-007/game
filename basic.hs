#!/usr/bin/env stack
{- stack
   script
   --resolver lts-19.25
-}

{-# LANGUAGE MultiWayIf #-}

module Main (main) where

import System.Random

main = do
  putStrLn "Basic variant."
  gen <- initStdGen
  let n = fst $ randomR (0, 100) gen :: Int
  f n 5
  putStrLn "Thanks for playing with me!"
  where
    f n t =
      if t > 0 then do
        putStrLn "Guess a number in 0..100 range:"
        x <- read <$> getLine :: IO Int
        if | x > n -> do putStrLn "Too big."
                         f n $ t - 1
           | x < n -> do putStrLn "Too small."
                         f n $ t - 1
           | otherwise -> putStrLn "Bingo!"
      else putStrLn $ "You lost, sorry. It was: " ++ show n
