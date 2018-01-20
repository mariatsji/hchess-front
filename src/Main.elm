import Html exposing (Html, Attribute, beginnerProgram, text, div, input, li, ul, p, table, tr, td)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
import String

main =
  beginnerProgram { model = "", view = view, update = update }

-- MODEL
type alias Model = String

-- UPDATE

type Msg = NewContent String

update : Msg -> Model -> Model
update (NewContent content) oldContent =
  content

emptyBoard =
  table [] <|
  List.repeat 8 <|
      tr [] <|
        List.repeat 8 <|
          td [ class "item-id" ] [ text "X" ]

-- VIEW

view : Model -> Html Msg
view content = emptyBoard
