{-# LANGUAGE NoImplicitPrelude #-}

module Section
  ( parseSection,
  )
where

import qualified Data.Attoparsec.Text as Attoparsec.Text
import List (parseList)
import Markup
import ParseLinesTill
import ParseTypes (Content (..), MarkupText (..), Section (..))
import Universum

parseSection :: Attoparsec.Text.Parser Section
parseSection = skipEmptyLines *> parseSection' <* skipEmptyLines
  where
    -- orgmode-parse supports lots of things,
    -- but the only important one is parsing the contents of the org file
    parseSection' = Section <$> parseContents

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
