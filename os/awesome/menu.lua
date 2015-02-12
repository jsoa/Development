
-- Menu

local awful    = require("awful")
local settings = require("settings")

local menuitems = {
    { "manual", settings.terminal .. " -e man awesome", nil},
    { "edit config", settings.editor_cmd .. " " .. awful.util.getdir("config") .. "/rc.lua", nil},
    { "restart", awesome.restart, nil },
    { "quit", awesome.quit, nil }
}
local mainmenu = awful.menu.new({ items = menuitems, width = 150 })


return {
    mainmenu = mainmenu
}
