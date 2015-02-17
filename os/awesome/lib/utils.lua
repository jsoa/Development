
-- Utils
local os         = os
local tonumber   = tonumber
local awful      = require("awful")
local beautiful  = require("beautiful")
local lain       = require("lain")


module("lib.utils")

beautiful.init(os.getenv("HOME") .. "/.config/awesome/theme.lua")


-- Simple colorize function
local function colorize(color, text)
    return '<span color="'..color..'">'..text..'</span>'
end

-- Run once function
local function run_once(cmd)
    findme = cmd
    firstspace = cmd:find(" ")
    if firstspace then
        findme = cmd:sub(0, firstspace-1)
    end
    awful.util.spawn_with_shell("pgrep -u $USER -x " .. findme .. " > /dev/null || (" .. cmd .. ")")
end

-- Color for values
local function color_values(value, warning, panic)
    value = tonumber(value)
    if value >= panic then
        return beautiful.fg_panic
    elseif value >= warning then
        return beautiful.fg_warning
    end
    return beautiful.fg_normal
end

return {
    colorize = colorize,
    run_once = run_once,
    color_values = color_values
}
