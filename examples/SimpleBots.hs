module SimpleBots where

import Core
import Control.Monad
import Arena


rammingBot :: Bot
rammingBot = forever (cmdAccelerate 1)

searchAndFire :: Bot
searchAndFire = do
  radar <- readRadar
  case radar of 
    BotFound _ -> cmdFire
    _          -> cmdTurnRadar 1
  searchAndFire