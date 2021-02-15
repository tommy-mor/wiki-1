-- | 

{-#LANGUAGE OverloadedStrings, DeriveGeneric, GeneralisedNewtypeDeriving #-}

module ParseTypes
       ( MarkupText(..),
         Section(..),
         Content(..),
         Item(..)
       ) where

import Universum

import           Data.Aeson                 (FromJSON (..), ToJSON (..),
                                             Value (..), defaultOptions,
                                             genericToEncoding, object, (.:),
                                             (.=))

-- from the library
data MarkupText
  = Plain         Text
  | LaTeX         Text
  | Verbatim      Text
  | Code          Text
  | Bold          [MarkupText]
  | Italic        [MarkupText]
  | UnderLine     [MarkupText]
  | Strikethrough [MarkupText]
  | HyperLink
    { link        :: Text
    , description :: Maybe Text
    }
  deriving (Show, Eq, Generic)

instance ToJSON MarkupText where
  toEncoding = genericToEncoding defaultOptions

instance FromJSON MarkupText

newtype Item = Item [Content]
  deriving (Show, Eq, Semigroup, Monoid,  Generic)
-- ToJSON, FromJSON,

data Content
  =
    OrderedList   [Item]
  | UnorderedList [Item]
  | Paragraph     [MarkupText]
  | Drawer
    { name     :: Text
    , contents :: Text
    } deriving (Show, Eq, Generic)


data Section = Section [Content]
  deriving (Show, Eq, Generic)
