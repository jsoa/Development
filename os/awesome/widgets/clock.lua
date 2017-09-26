
-- Clock/Calendar

local awful     = require("awful")
local lain      = require("lain")
local wibox     = require("wibox")
local beautiful = require("beautiful")


beautiful.init(os.getenv("HOME") .. "/.config/awesome/theme.lua")

-- Textclock
local clockicon = wibox.widget.imagebox(beautiful.widget_clock)
local textclock = awful.widget.textclock(" %I:%M")

-- Calendar
lain.widget.calendar({
      attach_to = { textclock, }
})

return {
    textclock = textclock,
    clockicon = clockicon
}
