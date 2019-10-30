
-- Network

local beautiful   = require("beautiful")
local wibox       = require("wibox")
local net_widgets = require("net_widgets")


beautiful.init(os.getenv("HOME") .. "/.config/awesome/theme.lua")

local neticon = wibox.widget.imagebox(beautiful.widget_net)

local net_wireless = net_widgets.wireless({
    interface="wlp3s0",
    popup_signal=true
})

local net_wired = net_widgets.indicator({
    interfaces  = {"enp0s25", "enp0s25", "enp0s31f6"},
    timeout     = 5
})

return {
    neticon = neticon,
    netwireless = net_wireless,
    netwired = net_wired
}
