
-- Battery

local beautiful = require("beautiful")
local lain      = require("lain")
local wibox     = require("wibox")


beautiful.init(os.getenv("HOME") .. "/.config/awesome/theme.lua")

local baticon = wibox.widget.imagebox(beautiful.widget_battery)
local batwidget = lain.widgets.bat({
    settings = function()
        if bat_now.perc == "N/A" then
            widget:set_markup(" AC ")
            baticon:set_image(beautiful.widget_ac)
            return
        elseif tonumber(bat_now.perc) <= 5 then
            baticon:set_image(beautiful.widget_battery_empty)
        elseif tonumber(bat_now.perc) <= 15 then
            baticon:set_image(beautiful.widget_battery_low)
        else
            baticon:set_image(beautiful.widget_battery)
        end
        widget:set_markup(" " .. bat_now.perc .. "% ")
    end
})

return {
    baticon = baticon,
    batwidget = batwidget
}
