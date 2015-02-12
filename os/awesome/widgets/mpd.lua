
-- Music

local awful      = require("awful")
local beautiful  = require("beautiful")
local lain       = require("lain")
local wibox      = require("wibox")


beautiful.init(os.getenv("HOME") .. "/.config/awesome/theme.lua")

local markup = lain.util.markup

local mpdicon = wibox.widget.imagebox(beautiful.widget_music)
mpdicon:buttons(awful.util.table.join(
    awful.button({ }, 1,
        function ()
            awful.util.spawn_with_shell(musicplr)
        end
    ))
)

local mpdwidget = lain.widgets.mpd({
    settings = function()
        if mpd_now.state == "play" then
            artist = " " .. mpd_now.artist .. " "
            title  = mpd_now.title  .. " "
            mpdicon:set_image(beautiful.widget_music_on)
        elseif mpd_now.state == "pause" then
            artist = " mpd "
            title  = "paused "
        else
            artist = ""
            title  = ""
            mpdicon:set_image(beautiful.widget_music)
        end

        widget:set_markup(markup("#EA6F81", artist) .. title)
    end
})

return {
    mpdicon = mpdicon,
    mpdwidget = mpdwidget
}
