
-- Utils

local awful = require("awful")
local lain  = require("lain")


module("lib.utils")


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

return {
    colorize = colorize,
    run_once = run_once
}
