
-- Memory

local beautiful = require("beautiful")
local lain      = require("lain")
local wibox     = require("wibox")
local utils     = require("lib.utils")


beautiful.init(os.getenv("HOME") .. "/.config/awesome/theme.lua")

-- MEM
local memicon = wibox.widget.imagebox(beautiful.widget_mem)
local memwidget = lain.widgets.mem({
    settings = function()
        color = utils.color_values(mem_now.used, 7500, 9000)
        widget:set_markup(" " .. utils.colorize(color, mem_now.used.."mb "))
    end
})


return {
    memicon = memicon,
    memwidget = memwidget
}
