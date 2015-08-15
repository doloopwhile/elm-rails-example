module Yogi where
-- Show an image of Yogi that resizes while maintaining its aspect ratio.

import Graphics.Element exposing (..)
import Mouse


main : Signal Element
main =
  Signal.map resizeableYogi edgeLength


resizeableYogi : Int -> Element
resizeableYogi n =
  image n n "/imgs/yogi.jpg"


edgeLength : Signal Int
edgeLength =
  Signal.map (\(x,y) -> max x y) Mouse.position
