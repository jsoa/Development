
-- File system

local beautiful = require("beautiful")
local lain      = require("lain")
local wibox     = require("wibox")
local utils     = require("lib.utils")


beautiful.init(os.getenv("HOME") .. "/.config/awesome/theme.lua")

local fsicon = wibox.widget.imagebox(beautiful.widget_hdd)
local fswidget = lain.widgets.fs({
    settings  = function()
        color = utils.color_values(fs_now.used, 80, 95)
        widget:set_markup(" " .. utils.colorize(color, fs_now.used .. "% "))
    end
})

return {
    fsicon = fsicon,
    fswidget = fswidget
}
