
-- Initial startup

                  require("awful.autofocus")
local awful     = require("awful")
local beautiful = require("beautiful")
local bindings  = require("bindings")
local gears     = require("gears")
local naughty   = require("naughty")
local utils     = require("lib.utils")


-- Locale
os.setlocale(os.getenv("LANG"))


-- Startup errors
if awesome.startup_errors then
    naughty.notify({ preset = naughty.config.presets.critical,
                     title = "Oops, there were errors during startup!",
                     text = awesome.startup_errors })
end


-- Popup errors when they occur
do
    local in_error = false
    awesome.connect_signal("debug::error", function (err)
        if in_error then return end
        in_error = true

        naughty.notify({ preset = naughty.config.presets.critical,
                         title = "Oops, an error happened!",
                         text = err })
        in_error = false
    end)
end


-- Run these commands
utils.run_once("synapse -s")

-- Start locker (xautolock)
utils.run_once('~/.config/awesome/locker')

-- beautiful init
beautiful.init(os.getenv("HOME") .. "/.config/awesome/theme.lua")


-- Wallpaper
if beautiful.wallpaper then
    for s = 1, screen.count() do
        gears.wallpaper.maximized(beautiful.wallpaper, s, true)
    end
end


-- Mouse keys
root.buttons(bindings.mouse_keys)

-- Global keys
root.keys(bindings.keys)
