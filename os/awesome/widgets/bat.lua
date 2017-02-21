
-- Battery
-- Note: Lenovo t450s has 2 batteries

local awful     = require("awful")
local beautiful = require("beautiful")
local lain      = require("lain")
local wibox     = require("wibox")
local utils     = require("lib.utils")


beautiful.init(os.getenv("HOME") .. "/.config/awesome/theme.lua")
local bat0 = nil
local bat1 = nil

local bat0icon = wibox.widget.imagebox(beautiful.widget_battery)
local bat0widget = lain.widgets.bat({
    battery = 'BAT0',
    settings = function()
        if bat_now.perc == "N/A" then
           bat0 = nil
        else
           bat0 = bat_now
        end
    end
})

local bat1icon = wibox.widget.imagebox(beautiful.widget_battery)
local bat1widget = lain.widgets.bat({
    battery = 'BAT1',
    settings = function()
        if bat_now.perc == "N/A" then
           bat1 = nil
        else
           bat1 = bat_now
        end
    end
})

local baticon = wibox.widget.imagebox(beautiful.widget_battery)
local batwidget = lain.widgets.bat({
    battery = 'BAT1',
    settings = function()
        bat = tonumber((tonumber(bat0.perc) + tonumber(bat1.perc)) / 2)
        if tonumber(bat) <= 5 then
            baticon:set_image(beautiful.widget_battery_empty)
        elseif tonumber(bat) <= 15 then
            baticon:set_image(beautiful.widget_battery_low)
        else
            baticon:set_image(beautiful.widget_battery)
        end

        color = beautiful.fg_normal
        if bat1.status == 'Charging' or bat0.status == 'Charging' then
          color = beautiful.fg_widget_clock
        end
        widget:set_markup(" " .. utils.colorize(color, bat .. "% "))
    end
})

return {
   baticon = baticon,
   batwidget = batwidget
}
