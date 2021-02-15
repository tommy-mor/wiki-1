{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Main where

import Ast
import IO
-- import Text.Blaze.Html5 as H
-- import Text.Blaze.Html5.Attributes as A
import qualified Text.Show as S
import Universum

main :: IO ()
main = do
  (_, ast) <- readOrgFile "./file.org"
  print $ S.show ast

{- big todos:
- parse the bodies, not just the headings, of everything
- fill out all of the parsing logic, adding a /lot/ more to the AST. we need everything off of the page!
-
-}

-- genPage :: Org -> Html
-- genPage ast = docTypeHtml $ do
--   H.head $ do
--     H.title $ H.toHtml $ _orgTitle ast
--   body $ do
--     p "A list of natural numbers"
--     ul $ forM_ [1 .. n] (li . toHtml)
--   where
--     n :: Int
--     n = 10

-- genSubtree :: Org -> Html
-- genSubtree ast = do
--   H.div
