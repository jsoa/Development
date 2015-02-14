
-- Layout box

local awful   = require("awful")
local naughty = require("naughty")

local notif = nil
local function hide()
    if notif ~= nil then
        naughty.destroy(notif)
        notif = nil
    end
end

local function show(screen)
    hide()
    notif = naughty.notify({
        text = awful.layout.getname(awful.layout.get(screen))
    })
end

local function layoutbox(screen)
    box = awful.widget.layoutbox(s)
    box:connect_signal('mouse::enter', function() show(screen) end)
    box:connect_signal('mouse::leave', function() hide() end)
    return box
end

return {
    layoutbox = layoutbox
}
