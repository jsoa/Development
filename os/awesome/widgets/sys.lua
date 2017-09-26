
-- System

local beautiful = require("beautiful")
local lain = require("lain")
local wibox = require("wibox")
local utils = require("lib.utils")


beautiful.init(os.getenv("HOME") .. "/.config/awesome/theme.lua")

-- Sysload
local sysload = lain.widget.sysload({
    settings = function()
       color = utils.color_values(load_1, 2, 5)
       widget:set_markup(" " .. utils.colorize(color, load_1) .." ")
    end
})

-- CPU
local cpuicon = wibox.widget.imagebox(beautiful.widget_cpu)
local cpuwidget = lain.widget.cpu({
    settings = function()
        color = utils.color_values(cpu_now.usage, 70, 90)
        widget:set_markup(" " .. utils.colorize(color, cpu_now.usage .. "% "))
    end
})

-- Coretemp
local tempicon = wibox.widget.imagebox(beautiful.widget_temp)
local tempwidget = lain.widget.temp({
    settings = function()
        color = utils.color_values(coretemp_now, 70, 80)
        widget:set_markup(" " .. utils.colorize(color, coretemp_now .. "°C "))
    end
})


return {
    sysload = sysload,
    cpuicon = cpuicon,
    cpuwidget = cpuwidget,
    tempicon = tempicon,
    tempwidget = tempwidget
}
