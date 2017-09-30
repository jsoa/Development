
-- Battery

local awful     = require("awful")
local beautiful = require("beautiful")
local lain      = require("lain")
local naughty   = require("naughty")
local wibox     = require("wibox")
local utils     = require("lib.utils")

beautiful.init(os.getenv("HOME") .. "/.config/awesome/theme.lua")

local has_notify = nil
local notification = nil
local popup = {}

local baticon = wibox.widget.imagebox(beautiful.widget_battery)
local batwidget = lain.widget.bat({
    batteries = {'BAT0', 'BAT1'},
    timeout = 2,
    ac = 'ACAD',
    settings = function()
        local bat = tonumber(bat_now.perc)
        if tonumber(bat) <= 5 then
            baticon:set_image(beautiful.widget_battery_empty)
        elseif tonumber(bat) <= 40 then
            baticon:set_image(beautiful.widget_battery_low)
        else
            baticon:set_image(beautiful.widget_battery)
        end

        color = beautiful.fg_normal
        if bat_now.status == 'Charging' then
           color = beautiful.fg_widget_clock
        end

        -- Set the markup doing percentage
        widget:set_markup(utils.colorize(color, bat .. '% '))

        -- Popup extra information
        function popup_text()
           local text = ''
           text = text .. ' Status .......... ' .. bat_now.status .. ' \n'
           text = text .. ' Time ............ ' .. bat_now.time .. ' \n'
           text = text .. ' AC Status ....... ' .. bat_now.ac_status .. ' \n'
           text = text .. ' Watt ............ ' .. bat_now.watt
           return text
        end

        -- Show popup handler
        function popup.show(t_out)
           popup.hide()
           notification = naughty.notify({
                 preset = fs_notification_preset,
                 text = popup_text(),
                 timeout = t_out,
                 screen = mouse.screen,
                 position = naughty.config.defaults.position
           })
        end

        -- Hide popup handler
        function popup.hide()
           if notification ~= nil then
              naughty.destroy(notification)
              notification = nil
           end
        end

        -- Set the mouse signals only when they have not already been connected
        if has_notify == nil then
           widget:connect_signal('mouse::enter', function () popup.show(0) end)
           widget:connect_signal('mouse::leave', function () popup.hide() end)
           has_notify = true
        end
    end
})

return {
   baticon = baticon,
   batwidget = batwidget
}
