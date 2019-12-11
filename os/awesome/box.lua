
-- Wibox

local awful     = require("awful")
local beautiful = require("beautiful")
local lain      = require("lain")
local layouts   = require("layouts")
local naughty   = require("naughty")
local tags      = require("tags")
local wibox     = require("wibox")
local widgets   = require("widgets")

beautiful.init(os.getenv("HOME") .. "/.config/awesome/theme.lua")

-- {{{ Wibox
local markup = lain.util.markup
local separators = lain.util.separators


-- Separators
local spr = wibox.widget.textbox(' ')
local arrl = wibox.widget.imagebox()
arrl:set_image(beautiful.arrl)
-- local arrl_dl = separators.arrow_left(beautiful.bg_focus, "alpha")
-- local arrl_ld = separators.arrow_left("alpha", beautiful.bg_focus)
local arrl_dl = wibox.widget.imagebox()
local arrl_ld = wibox.widget.imagebox()
arrl_dl:set_image(beautiful.arrl_dl)
arrl_ld:set_image(beautiful.arrl_ld)


-- Create a wibox for each screen and add it
local box = {}
local statusbox = {}
local layoutbox = {}
local taglist = {}
taglist.buttons = awful.util.table.join(
                    awful.button({ }, 1, awful.tag.viewonly),
                    awful.button({ modkey }, 1, awful.client.movetotag),
                    awful.button({ }, 3, awful.tag.viewtoggle),
                    awful.button({ modkey }, 3, awful.client.toggletag),
                    awful.button({ }, 4, function(t) awful.tag.viewnext(awful.tag.getscreen(t)) end),
                    awful.button({ }, 5, function(t) awful.tag.viewprev(awful.tag.getscreen(t)) end)
                    )
local tasklist = {}
tasklist.buttons = awful.util.table.join(
    awful.button({ }, 1, function (c)
            if c == client.focus then
                c.minimized = true
            else
                -- Without this, the following
                -- :isvisible() makes no sense
                c.minimized = false
                if not c:isvisible() then
                    awful.tag.viewonly(c:tags()[1])
                end
                -- This will also un-minimize
                -- the client, if needed
                client.focus = c
                c:raise()
            end
    end),
    awful.button({ }, 3, function ()
            if instance then
                instance:hide()
                instance = nil
            else
                instance = awful.menu.clients({ width=250 })
            end
    end),
    awful.button({ }, 4, function ()
            awful.client.focus.byidx(1)
            if client.focus then client.focus:raise() end
    end),
    awful.button({ }, 5, function ()
            awful.client.focus.byidx(-1)
            if client.focus then client.focus:raise() end
end))

for s = 1, screen.count() do

    -- We need one layoutbox per screen.
    layoutbox[s] = widgets.lb.layoutbox(s)
    layoutbox[s]:buttons(
        awful.util.table.join(
            awful.button({ }, 1, function () awful.layout.inc(layouts, 1) end),
            awful.button({ }, 3, function () awful.layout.inc(layouts, -1) end),
            awful.button({ }, 4, function () awful.layout.inc(layouts, 1) end),
            awful.button({ }, 5, function () awful.layout.inc(layouts, -1) end)))

    -- Create a taglist widget
    taglist[s] = awful.widget.taglist(
        s, awful.widget.taglist.filter.all, taglist.buttons)

    -- Create a tasklist widget
    tasklist[s] = awful.widget.tasklist(
        s, awful.widget.tasklist.filter.currenttags, tasklist.buttons)

    -- Create the wibox
    box[s] = awful.wibox(
        { position = "top", screen = s, height = 22 }
    )

    -- Widgets that are aligned to the upper left
    local left_layout = wibox.layout.fixed.horizontal()
    left_layout:add(spr)
    left_layout:add(taglist[s])
    left_layout:add(arrl)

    -- Widgets that are aligned to the upper right
    local right_layout_toggle = true
    local right_layout = wibox.layout.fixed.horizontal()
    local function right_layout_add (...)
        local arg = {...}
        if right_layout_toggle then
            right_layout:add(arrl_ld)
            for i, n in pairs(arg) do
                right_layout:add(wibox.widget.background(n ,beautiful.bg_focus))
            end
        else
            right_layout:add(arrl_dl)
            for i, n in pairs(arg) do
                right_layout:add(n)
            end
        end
        right_layout_toggle = not right_layout_toggle
    end

    -- Disabled bits
    -- if s == 1 then right_layout:add(wibox.widget.systray()) end
    -- right_layout_add(mailicon, mailwidget)

    right_layout:add(spr)

    right_layout_add(
       widgets.sys.cpuicon, widgets.sys.cpuwidget.widget,
       widgets.sys.sysload.widget, widgets.fan.fanwidget.widget)
    right_layout_add(widgets.mem.memicon, widgets.mem.memwidget.widget)
    right_layout_add(widgets.sys.tempicon, widgets.sys.tempwidget.widget)
    right_layout_add(widgets.fs.fsicon, widgets.fs.fswidget.widget)
    right_layout_add(widgets.vol.volicon, widgets.vol.volwidget)
    right_layout_add(widgets.wea.weather.icon, widgets.wea.weather.widget)
    right_layout_add(widgets.net.netwireless, widgets.net.netwired)
    right_layout_add(widgets.bat.baticon, widgets.bat.batwidget.widget)
    right_layout_add(widgets.clock.textclock, spr)
    -- Disable the layout toggle
    -- right_layout_add(layoutbox[s])

    -- Now bring it all together (with the tasklist in the middle)
    local layout = wibox.layout.align.horizontal()
    layout:set_left(left_layout)
    layout:set_middle(tasklist[s])
    layout:set_right(right_layout)
    box[s]:set_widget(layout)

end
-- }}}

return {
    wibox = box
}
