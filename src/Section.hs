{-#LANGUAGE NoImplicitPrelude #-}
module Section
       (
       ) where

import Universum

import qualified Data.Attoparsec.Text as Attoparsec.Text
import ParseTypes
import Markup

import ParseTypes (MarkupText(..), Section(..))
import ParseLinesTill

import List (parseList)

parseSection :: Attoparsec.Text.Parser Section
parseSection = skipEmptyLines *> parseSection' <* skipEmptyLines
  -- orgmode-parse supports lots of things,
  -- but the only important one is parsing the contents of the org file
  where parseSection' = Section <$> parseContents

-- https://github.com/ixmatus/orgmode-parse/blob/master/src/Data/OrgMode/Parse/Attoparsec/Content.hs
parseContents :: Attoparsec.Text.Parser [Content]
parseContents = concat <$> Attoparsec.Text.many' p
  where
    p :: Attoparsec.Text.Parser [Content]
    p = do
      blocks <- parseLinesTill parseParagraph (Attoparsec.Text.eitherP takeContentBreak parseList)
      return $ filter (/= Paragraph []) blocks

-- https://github.com/ixmatus/orgmode-parse/blob/master/src/Data/OrgMode/Parse/Attoparsec/Content/Paragraph.hs
parseParagraph :: Attoparsec.Text.Parser Content
parseParagraph = Paragraph <$> parseMarkupContent

