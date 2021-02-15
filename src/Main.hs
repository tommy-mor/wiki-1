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
main = parseFile "../pages/nix.org"

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
          -- subheader = toHtml $ _orgText ast
          semanticSubheader = genSemanticSection $ _orgStructuredText ast
          body = mapM_ (genBody' (depth + 1)) $ _orgSubtrees ast
          headerElement = getDepthTitle depth
       in div_
            ( do
                headerElement title
                -- p_ subheader
                p_ semanticSubheader
                div_ body
            )

    genBody = genBody' 0

    genSemanticSection :: OrgSection -> Html ()
    genSemanticSection (OrgSection contents) = mapM_ genSemanticContent contents

    genSemanticContent :: OrgContent -> Html ()
    genSemanticContent section = case section of
      OrgUnorderedList ols -> ul_ $ mapM_ (\(OrgItem c) -> li_ $ mapM_ genSemanticContent c) ols
      OrgOrderedList ols -> ul_ $ mapM_ (\(OrgItem c) -> li_ $ mapM_ genSemanticContent c) ols
      OrgParagraph lm -> mapM_ genSemanticMarkup lm

    genSemanticMarkup :: Markup -> Html ()
    genSemanticMarkup m =
      case m of
        OrgPlain t -> p_ $ toHtml t
        OrgLaTeX t -> p_ $ toHtml t
        OrgVerbatim t -> p_ $ toHtml t
        OrgCode (Language l) (Output o) t -> p_ $ toHtml t
        OrgBold ms -> mapM_ genSemanticMarkup ms
        OrgItalic ms -> mapM_ genSemanticMarkup ms
        OrgUnderLine ms -> mapM_ genSemanticMarkup ms
        OrgStrikethrough ms -> mapM_ genSemanticMarkup ms
        OrgHyperLink {link = l, description = d} -> a_ "asdf"
