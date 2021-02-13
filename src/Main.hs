{-# LANGUAGE NoImplicitPrelude #-}
module Main where
import           IO
import qualified Text.Show
import           Universum

main :: IO ()
main = do
  (_, ast) <- readOrgFile "../pages/haskell.org"
  print $ Text.Show.show ast
