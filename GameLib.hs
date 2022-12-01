{-# LANGUAGE MultiWayIf #-}

module GameLib where

import System.Random
import Data.Function ((&))

secret :: IO Int
secret = do
  gen <- initStdGen
  return $ fst $ randomR (0, 100) gen

guess :: IO Int
guess = do
  putStrLn "Guess a number in 0..100 range:"
  read <$> getLine

diff :: Int -> IO Int -> IO Int
diff n guess = do
  x <- guess
  return $ x - n

type Bingo = Bool

verbose :: IO Int -> IO Bingo
verbose diff = do
  d <- diff
  putStrLn $ if | d < 0 -> "Too small."
                | d > 0 -> "Too big."
                | otherwise -> "Bingo!"
  return $ d == 0

attempts :: Int -> Int -> IO Bingo -> IO ()
attempts 0 n _ = putStrLn $ "You lost, sorry. It was: " ++ show n
attempts t n verbose = do
  bingo <- verbose
  if bingo then return ()
           else attempts (t - 1) n verbose

farewell attempts = do
  attempts
  putStrLn "Thanks for playing with me!"

