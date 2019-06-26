module Main where

import Prelude

import Data.Array as Array
import Effect (Effect)
import Effect.Console (log)

foreign import argv :: Array String

main :: Effect Unit
main = do
  log $ "argv length:" <> show (Array.length argv)
  log $ "argv: " <> show argv
