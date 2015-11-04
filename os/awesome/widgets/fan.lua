

-- Fan

local beautiful = require("beautiful")
local lain      = require("lain")
local wibox     = require("wibox")
local utils     = require("lib.utils")
local fan       = require("lib.fan")
local io        = { open = io.open }
local timer     = timer
local naughty   = require("naughty")

beautiful.init(os.getenv("HOME") .. "/.config/awesome/theme.lua")

-- FAN
local fanwidget = fan({
    settings = function()
        color = utils.color_values(speed_now, 3100, 4200)
        value = speed_now
        if speed_now == 0
        then
           value = '-'
        end
        widget:set_markup(" " .. utils.colorize(color, value .. " "))

    end
})

return {
    fanwidget = fanwidget
}
