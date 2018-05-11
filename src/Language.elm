module Language exposing (availableLanguages, langFromFlag, langToString)

import Translations exposing (Lang(En, It, Ja))


availableLanguages : List Lang
availableLanguages =
    [ En, It, Ja ]


langFromFlag : Result String String -> Lang
langFromFlag language =
    case language of
        Ok language ->
            Translations.getLnFromCode language

        Err _ ->
            En


langToString : Lang -> String
langToString language =
    case language of
        En ->
            "English"

        It ->
            "Italiano"

        Ja ->
            "日本語"