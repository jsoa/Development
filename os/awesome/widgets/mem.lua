
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
        color = beautiful.fg_normal
        if mem_now.used >= 5500 then
            color = beautiful.fg_panic
        elseif mem_now.used >= 4500 then
            color = beautiful.fg_warning
        end
        widget:set_markup(" " .. utils.colorize(color, mem_now.used.."mb "))
    end
})


return {
    memicon = memicon,
    memwidget = memwidget
}
