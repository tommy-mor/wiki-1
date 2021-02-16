{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Main where

import Ast
import qualified Data.Text as T
import IO
import Lucid
import System.FilePath (takeBaseName, (-<.>))
import qualified Text.Show as S
import Universum

main :: IO ()
main = parseFile "./file.org"

parseFile :: String -> IO ()
parseFile filePath = do
  (_, ast) <- readOrgFile filePath
  -- print $ S.show ast
  print $ renderText $ genPage ast
  renderToFile (filePath -<.> ".html") (genPage ast)

genPage :: Org -> Html ()
genPage ast =
  let title = toHtml $ _orgTitle ast
      contents = toHtml $ genSemanticSection $ _orgStructuredText ast
      body = mapM_ genBody $ _orgSubtrees ast
   in html_ $ do
        head_ $ do
          title_ title
          link_ [rel_ "stylesheet", type_ "text/css", href_ "main.css"]
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
          semanticSubheader = genSemanticSection $ _orgStructuredText ast
          body = mapM_ (genBody' (depth + 1)) $ _orgSubtrees ast
          headerElement = getDepthTitle depth
       in div_
            ( do
                headerElement title
                p_ semanticSubheader
                body
            )

    genBody = genBody' 0

    genSemanticSection :: OrgSection -> Html ()
    genSemanticSection (OrgSection contents) = mapM_ genSemanticContent contents

    genSemanticContent :: OrgContent -> Html ()
    genSemanticContent section = case section of
      OrgUnorderedList ols -> ul_ $ mapM_ (\(OrgItem c) -> li_ $ mapM_ genSemanticContent c) ols
      OrgOrderedList ols -> ol_ $ mapM_ (\(OrgItem c) -> li_ $ mapM_ genSemanticContent c) ols
      OrgParagraph lm -> mapM_ genSemanticMarkup lm

    genSemanticMarkup :: Markup -> Html ()
    genSemanticMarkup m =
      case m of
        OrgPlain t -> span_ [] $ toHtml t
        OrgLaTeX t -> span_ $ toHtml t
        OrgVerbatim t -> span_ $ toHtml t
        OrgCode (Language l) (Output o) t -> code_ $ toHtml t
        OrgBold ms -> span_ [class_ "bold"] $ mapM_ genSemanticMarkup ms
        OrgItalic ms -> span_ [class_ "italic"] $ mapM_ genSemanticMarkup ms
        OrgUnderLine ms -> span_ [class_ "underline"] $ mapM_ genSemanticMarkup ms
        OrgStrikethrough ms -> span_ [class_ "strikethrough"] $ mapM_ genSemanticMarkup ms
        OrgHyperLink {link = l, description = d} ->
          a_ [href_ l] $
            toHtml $
              -- default to link if the description isn't available
              fromMaybe l d
        OrgFileLink {filepath = fp, description = d} ->
          -- TODO: without a name this looks weird
          -- TODO: distinguish internal links from external links with styling
          a_ [href_ $ T.pack $ "./" ++ fp -<.> ".html"] (toHtml $ fromMaybe (T.pack $ takeBaseName fp) d)
