
-- System

local beautiful = require("beautiful")
local lain = require("lain")
local wibox = require("wibox")
local utils = require("lib.utils")


beautiful.init(os.getenv("HOME") .. "/.config/awesome/theme.lua")

-- Sysload
local sysload = lain.widgets.sysload({
    settings = function()
       color = beautiful.fg_normal
       if tonumber(load_1) >= 4 then
           color = beautiful.fg_panic
       elseif tonumber(load_1) >= 2 then
           color = beautiful.fg_warning
       end
       widget:set_markup(" " .. utils.colorize(color, load_1..'/'..load_5) .." ")
    end
})

-- CPU
local cpuicon = wibox.widget.imagebox(beautiful.widget_cpu)
local cpuwidget = lain.widgets.cpu({
    settings = function()
        color = beautiful.fg_normal
        if tonumber(cpu_now.usage) >= 90 then
            color = beautiful.fg_panic
        elseif tonumber(cpu_now.usage) >= 70 then
            color = beautiful.fg_warning
        end
        widget:set_markup(" " .. utils.colorize(color, cpu_now.usage .. "% "))
    end
})

-- Coretemp
local tempicon = wibox.widget.imagebox(beautiful.widget_temp)
local tempwidget = lain.widgets.temp({
    settings = function()
        color = beautiful.fg_normal
        if coretemp_now >= 75 then
            color = beautiful.fg_panic
        elseif coretemp_now >= 60 then
            color = beautiful.fg_warning
        end
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
