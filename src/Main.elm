module Main exposing (..)

import Html

import Msg    exposing (..)
import Model  exposing (..)
import Update exposing (..)
import View   exposing (..)

main =
    Html.beginnerProgram { model = model, view = view, update = update }
