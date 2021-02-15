{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralisedNewtypeDeriving #-}
{-# LANGUAGE OverloadedStrings #-}

-- |
module ParseTypes
  ( MarkupText (..),
    Section (..),
    Content (..),
    Item (..),
  )
where

import Data.Aeson
  ( FromJSON (..),
    ToJSON (..),
    Value (..),
    defaultOptions,
    genericToEncoding,
    object,
    (.:),
    (.=),
  )
import Universum

-- from the library
data MarkupText
  = Plain Text
  | LaTeX Text
  | Verbatim Text
  | Code Text
  | Bold [MarkupText]
  | Italic [MarkupText]
  | UnderLine [MarkupText]
  | Strikethrough [MarkupText]
  | HyperLink
      { link :: Text,
        description :: Maybe Text
      }
  deriving (Show, Eq, Generic)

instance ToJSON MarkupText where
  toEncoding = genericToEncoding defaultOptions

instance FromJSON MarkupText

newtype Item = Item [Content]
  deriving (Show, Eq, Semigroup, Monoid, Generic)

-- ToJSON, FromJSON,

data Content
  = OrderedList [Item]
  | UnorderedList [Item]
  | Paragraph [MarkupText]
  | Drawer
      { name :: Text,
        contents :: Text
      }
  deriving (Show, Eq, Generic)

newtype Section = Section [Content]
  deriving (Show, Eq, Generic)
