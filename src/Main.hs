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
    depthTitles = [h1_, h2_, h3_, h4_, h5_]
    getDepthTitle' :: Term a b => [a -> b] -> Natural -> (a -> b)
    getDepthTitle' depthList depth =
      let neList = nonEmpty depthList
       in case (depth, neList) of
            (_, Nothing) -> h5_
            (0, Just ls) -> head ls
            (_, Just ls) -> getDepthTitle' (tail ls) (depth - 1)
    getDepthTitle = getDepthTitle' depthTitles

    genBody' :: Natural -> Org -> Html ()
    genBody' depth ast =
      let title = toHtml $ _orgTitle ast
          subheader = toHtml $ _orgText ast
          body = mapM_ (genBody' (depth + 1)) $ _orgSubtrees ast
          headerElement = getDepthTitle depth
       in div_
            ( do
                headerElement title
                p_ subheader
                div_ body
            )
    genBody = genBody' 0
