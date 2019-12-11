
-- Layout table

local awful  = require("awful")
local lain   = require("lain")


local layouts = {

   -- awful
   awful.layout.suit.floating,        -- 1
   awful.layout.suit.max,             -- 2
   awful.layout.suit.max.fullscreen,  -- 3
   awful.layout.suit.fair,            -- 4
   awful.layout.suit.fair.horizontal, -- 5
   awful.layout.suit.fair.vertical,   -- 6
   awful.layout.suit,                 -- 7
   awful.layout.suit.tile,            -- 8
   awful.layout.suit.tile.left,       -- 9
   awful.layout.suit.tile.top,        -- 10
   awful.layout.suit.tile.bottom,     -- 11
   awful.layout.suit.magnifier,       -- 12
   awful.layout.suit.spiral,          -- 13
   awful.layout.suit.spiral.dwindle,  -- 14

   -- Lain
   lain.layout.termfair,              -- 15
   lain.layout.cascade,               -- 16
   lain.layout.centerwork,            -- 17

}

return layouts
