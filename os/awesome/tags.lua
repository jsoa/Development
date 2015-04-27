
-- Tags

local awful   = require("awful")
local layouts = require("layouts")
local wibox   = require("wibox")

local tags = {
   names = { 1, 2, 3, 4, 5},
   layout = { layouts[2], layouts[10], layouts[8], layouts[5], layouts[2] }
}

for s = 1, screen.count() do
   tags[s] = awful.tag(tags.names, s, tags.layout)
end

-- {{{ The dev workspace should have its master window larger
awful.tag.setproperty(tags[1][2], "nmaster", 1)
awful.tag.setproperty(tags[1][2], "mwfact", 0.85)
--

return {
    tags = tags
}
