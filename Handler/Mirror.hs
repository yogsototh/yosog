module Handler.Mirror where

import Import
import qualified Data.Text as T

getMirrorR :: Handler Html
getMirrorR = defaultLayout $(widgetFile "mirror")

postMirrorR :: Handler Html
postMirrorR = do
    postedText <- runInputPost $ ireq textField "content"
    defaultLayout $(widgetFile "posted")
