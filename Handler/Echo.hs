module Handler.Echo where

import Import

getEchoR :: Text -> Handler Html
getEchoR theText = defaultLayout $(widgetFile "echo")
