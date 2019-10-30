
-- Volume

local awful     = require("awful")
local beautiful = require("beautiful")
local wibox     = require("wibox")
local io        = io
local string    = string
local timer     = timer


local volicon = wibox.widget.imagebox(beautiful.widget_vol)

local volwidget = wibox.widget.textbox()
volwidget:set_align("right")


local function update_volume()
   local fd = io.popen("amixer -c 0 sget Master")
   local status = fd:read("*all")
   fd:close()

   local volume = string.match(status, "(%d?%d?%d)%%")
   volume = string.format("% 3d", volume)

   status = string.match(status, "%[(o[^%]]*)%]")

   if string.find(status, "on", 1, true) then
   -- For the volume number percentage
       volume = volume .. "% "
   else
   -- For displaying the mute status.
       volume = volume .. "M "

   end
   volwidget:set_markup(volume)
end

update_volume()

local t = timer({ timeout = 0.2 })
t:connect_signal("timeout", function () update_volume() end)
t:start()

return {
    volicon = volicon,
    volwidget = volwidget,
    update_volume = update_volume
}
