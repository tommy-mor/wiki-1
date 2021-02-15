{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Main where

import Ast
import IO
import Lucid
import System.FilePath (takeBaseName)
import qualified Text.Show as S
import Universum

main :: IO ()
main = parseFile "./file.org"

parseFile :: String -> IO ()
parseFile filePath = do
  (_, ast) <- readOrgFile filePath
  -- print $ S.show ast
  print $ renderText $ genPage ast
  renderToFile (takeBaseName filePath ++ ".html") (genPage ast)

genPage :: Org -> Html ()
genPage ast =
  let title = toHtml $ _orgTitle ast
      contents = toHtml $ _orgText ast
      body = mapM_ genBody $ _orgSubtrees ast
   in html_ $ do
        head_ $ title_ title
        body_
          ( do
              h1_ title
              p_ contents
              div_ body
          )
  where
    genBody :: Org -> Html ()
    genBody ast =
      let title = toHtml $ _orgTitle ast
          subheader = toHtml $ _orgText ast
          body = mapM_ genBody $ _orgSubtrees ast
       in div_
            ( do
                h2_ title
                p_ subheader
                div_ body
            )
