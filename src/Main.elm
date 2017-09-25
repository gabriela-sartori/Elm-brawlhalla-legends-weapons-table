module Main exposing (..)

import Html
import Model exposing (..)
import View exposing (..)


main =
    Html.beginnerProgram { model = model, view = view, update = always }
