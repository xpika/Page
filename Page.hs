module Main where

import System.Environment
import Safe

main :: IO ()
main = getArgs >>= process

process :: [String] -> IO ()
process [s,p] = interact $ paginator (readMay s) (readMay p)
process [p]   = process ["20",p]
process _     = putStrLn helpMsg

helpMsg :: [Char]
helpMsg = "Usage: page [page-size] <page>"

paginator :: Maybe Int -> Maybe Int -> String -> String
paginator Nothing   _       = const helpMsg
paginator _         Nothing = const helpMsg
paginator (Just s) (Just p) = unlines . take s . drop ((p - 1) * s) . lines
