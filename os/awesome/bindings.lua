
-- Global key bindings

local awful     = require("awful")
local lain      = require("lain")
local keydoc    = require("lib.keydoc")
local menu      = require("menu")
local box       = require("box")
local settings  = require("settings")
local widgets   = require("widgets")
local utils     = require("lib.utils")

local modkey = settings.modkey
local altkey = settings.altkey


local keys = awful.util.table.join(
    -- Take a screenshot
    -- https://github.com/copycat-killer/dots/blob/master/bin/screenshot
    -- keydoc.group("Layout manipulation"),

    -- TODO: fix printscreen
    -- awful.key({ altkey }, "p", function() os.execute("screenshot") end, "Take Screenshot"),


    -- Tag browsing
    -- keydoc.group("Tag Browsing"),
    awful.key({ modkey }, "Left",      awful.tag.viewprev),
    awful.key({ modkey }, "Right",     awful.tag.viewnext),
    awful.key({ modkey }, "Escape",    awful.tag.history.restore),

    -- Non-empty tag browsing
    awful.key({ altkey }, "Left",
        function()
            lain.util.tag_view_nonempty(-1)
        end),
    awful.key({ altkey }, "Right",
        function()
            lain.util.tag_view_nonempty( 1)
        end),

    -- Default client focus
    keydoc.group("Client Focus"),
    awful.key({ modkey }, "k",
        function ()
            awful.client.focus.byidx( 1)
            if client.focus then client.focus:raise() end
        end, "Focus Next Client"),
    awful.key({ modkey }, "j",
        function ()
            awful.client.focus.byidx(-1)
            if client.focus then client.focus:raise() end
        end, "Focus Previous Client"),
    awful.key({ modkey }, "h",
        function()
            awful.client.focus.bydirection("left")
            if client.focus then client.focus:raise() end
        end, "Focus by Direction Left"),
    awful.key({ modkey }, "l",
        function()
            awful.client.focus.bydirection("right")
            if client.focus then client.focus:raise() end
        end, "Focus by Direction Right"),

    -- Show Menu
    keydoc.group("Misc"),
    awful.key({ modkey }, "w",
        function ()
            menu.mainmenu:show({ keygrabber = true })
        end, "Show Menu"),
    -- lock screen with light dm
    awful.key({ modkey }, "l",
        function ()
            awful.util.spawn_with_shell("dm-tool lock")
        end, "Lock Screen"),

    -- Show/Hide Wibox
    awful.key({ modkey }, "b", function ()
        box.wibox[mouse.screen].visible = not box.wibox[mouse.screen].visible
    end, "Show/Hide WiBox"),

    -- Layout manipulation
    keydoc.group("Layout Manipulation"),
    awful.key({ modkey, "Shift"   }, "j",   function ()    awful.client.swap.byidx(  1)      end, "Swap with next client"),
    awful.key({ modkey, "Shift"   }, "k",   function ()    awful.client.swap.byidx( -1)      end, "Swap previous client"),
    awful.key({ modkey, "Control" }, "j",   function ()    awful.screen.focus_relative( 1)   end, "Focus next related screen"),
    awful.key({ modkey, "Control" }, "k",   function ()    awful.screen.focus_relative(-1)   end, "Focus previous relative screen"),

    awful.key({ modkey, }, "u",
        awful.client.urgent.jumpto, "Jump to urgent client"),

    awful.key({ modkey, }, "Tab",
        function ()
            awful.client.focus.history.previous()
            if client.focus then
                client.focus:raise()
            end
        end, "Focus last client (in history)"),

    awful.key({ altkey, "Shift"   }, "l",      function () awful.tag.incmwfact( 0.05)       end, "Increment factor of master"),
    awful.key({ altkey, "Shift"   }, "h",      function () awful.tag.incmwfact(-0.05)       end, "Decrement factor of master"),
    awful.key({ modkey, "Shift"   }, "l",      function () awful.tag.incnmaster(-1)         end),
    awful.key({ modkey, "Shift"   }, "h",      function () awful.tag.incnmaster( 1)         end),
    awful.key({ modkey, "Control" }, "l",      function () awful.tag.incncol(-1)            end),
    awful.key({ modkey, "Control" }, "h",      function () awful.tag.incncol( 1)            end),
    awful.key({ modkey,           }, "space",  function () awful.layout.inc(layouts,  1)    end),
    awful.key({ modkey, "Shift"   }, "space",  function () awful.layout.inc(layouts, -1)    end),
    awful.key({ modkey, "Control" }, "n",      awful.client.restore,                              "Restore Client"),

    -- Standard program
    keydoc.group("Misc"),
    awful.key({ modkey,           }, "Return", function () awful.util.spawn(terminal)       end, "Spawn terminal"),
    awful.key({ modkey, "Control" }, "r",      awesome.restart                                 , "Restart awesome"),
    awful.key({ modkey, "Shift"   }, "q",      awesome.quit                                    , "Quit awesome (logout)"),
    awful.key({ altkey, "Control" }, "k",
       function ()
           awful.util.spawn_with_shell("keychain -q --timeout 480 --agents ssh id_rsa")
       end, "Keychain"),

    -- Widget popups
    keydoc.group("Widgets"),
    awful.key({ altkey,           }, "c",      function () lain.widgets.calendar:show(7)    end, "Show Calendar"),
    awful.key({ altkey,           }, "h",      function () widgets.fs.fswidget.show(7)      end, "Show HDD"),
    awful.key({ altkey,           }, "n",      function () widgets.net.netwireless.show(7)  end, "Show Net"),

    -- ALSA volume control (fn+vol)
    keydoc.group("Volume Controls"),
    awful.key({ }, "XF86AudioRaiseVolume", function ()
       awful.util.spawn("amixer set Master 5%+", false) end),
    awful.key({ }, "XF86AudioLowerVolume", function ()
       awful.util.spawn("amixer set Master 5%-", false) end),
    awful.key({ }, "XF86AudioMute", function ()
       awful.util.spawn("amixer set Master toggle", false) end),

    -- Alternate volume controls
    awful.key({ altkey }, "Up",
        function ()
            awful.util.spawn("amixer -q set Master 1%+")
            widgets.vol.update_volume()
        end, "Volume Up"),
    awful.key({ altkey }, "Down",
        function ()
            awful.util.spawn("amixer -q set Master 1%-")
            widgets.vol.update_volume()
        end, "Volume Down"),
    awful.key({ altkey }, "m",
        function ()
            awful.util.spawn("amixer -q set Master playback toggle")
            widgets.vol.update_volume()
        end, "Mute"),
    awful.key({ altkey, "Control" }, "m",
        function ()
            awful.util.spawn("amixer -q set Master playback 100%")
            widgets.vol.update_volume()
        end, "Max Volume"),

    -- MPD control
    awful.key({ altkey, "Control" }, "Up",
        function ()
            awful.util.spawn_with_shell("mpc toggle || ncmpc toggle || pms toggle")
            widgets.mpd.mpdwidget.update()
        end),
    awful.key({ altkey, "Control" }, "Down",
        function ()
            awful.util.spawn_with_shell("mpc stop || ncmpc stop || pms stop")
            widgets.mpd.mpdwidget.update()
        end),
    awful.key({ altkey, "Control" }, "Left",
        function ()
            awful.util.spawn_with_shell("mpc prev || ncmpc prev || pms prev")
            widgets.mpd.mpdwidget.update()
        end),
    awful.key({ altkey, "Control" }, "Right",
        function ()
            awful.util.spawn_with_shell("mpc next || ncmpc next || pms next")
            widgets.mpd.mpdwidget.update()
        end),

    -- Copy to clipboard
    keydoc.group("Misc"),
    -- awful.key({ modkey }, "c", function () os.execute("xsel -p -o | xsel -i -b") end, "Copy to clipboard"),

    -- User programs
    awful.key({ modkey }, "q", function () awful.util.spawn(browser) end),
    awful.key({ modkey }, "i", function () awful.util.spawn(browser2) end),
    awful.key({ modkey }, "s", function () awful.util.spawn(gui_editor) end),
    awful.key({ modkey }, "g", function () awful.util.spawn(graphics) end),

    -- Prompt
    -- awful.key({ modkey }, "r", function () promptbox[mouse.screen]:run() end, "Prompt"),
    -- awful.key({ modkey }, "x",
    --           function ()
    --               awful.prompt.run({ prompt = "Run Lua code: " },
    --               mypromptbox[mouse.screen].widget,
    --               awful.util.eval, nil,
    --               awful.util.getdir("cache") .. "/history_eval")
    --           end, "Run Lua Code"),
    awful.key({ modkey, }, "F1", keydoc.display)
)

-- Mouse Keys
local mouse_keys = awful.util.table.join(
    awful.button({ }, 3, function () mymainmenu:toggle() end),
    awful.button({ }, 4, awful.tag.viewnext),
    awful.button({ }, 5, awful.tag.viewprev)
)

-- Client Keys
local clientkeys = awful.util.table.join(
    keydoc.group("Client Keys"),
    awful.key({ modkey,           }, "f",      function (c) c.fullscreen = not c.fullscreen  end, "Fullscreen"),
    awful.key({ modkey, "Shift"   }, "c",      function (c) c:kill()                         end, "Kill"),
    awful.key({ modkey, "Control" }, "space",  awful.client.floating.toggle                     , "Toggle floating"),
    awful.key({ modkey, "Control" }, "Return", function (c) c:swap(awful.client.getmaster()) end),
    awful.key({ modkey,           }, "o",      awful.client.movetoscreen                        ),
    awful.key({ modkey,           }, "t",      function (c) c.ontop = not c.ontop            end),
    awful.key({ modkey,           }, "n",
        function (c)
            -- The client currently has the input focus, so it cannot be
            -- minimized, since minimized clients can't have the focus.
            c.minimized = true
        end, "Minimize"),
    awful.key({ modkey,           }, "m",
        function (c)
            c.maximized_horizontal = not c.maximized_horizontal
            c.maximized_vertical   = not c.maximized_vertical
        end, "Maximize")
)

-- Bind all key numbers to tags.
-- Be careful: we use keycodes to make it works on any keyboard layout.
-- This should map on the top row of your keyboard, usually 1 to 9.
for i = 1, 9 do
    keys = awful.util.table.join(keys,
        -- keydoc.group("Key Numbers"),
        awful.key({ modkey }, "#" .. i + 9,
                  function ()
                        local screen = mouse.screen
                        local tag = awful.tag.gettags(screen)[i]
                        if tag then
                           awful.tag.viewonly(tag)
                        end
                  end),
        awful.key({ modkey, "Control" }, "#" .. i + 9,
                  function ()
                      local screen = mouse.screen
                      local tag = awful.tag.gettags(screen)[i]
                      if tag then
                         awful.tag.viewtoggle(tag)
                      end
                  end),
        awful.key({ modkey, "Shift" }, "#" .. i + 9,
                  function ()
                      local tag = awful.tag.gettags(client.focus.screen)[i]
                      if client.focus and tag then
                          awful.client.movetotag(tag)
                     end
                  end),
        awful.key({ modkey, "Control", "Shift" }, "#" .. i + 9,
                  function ()
                      local tag = awful.tag.gettags(client.focus.screen)[i]
                      if client.focus and tag then
                          awful.client.toggletag(tag)
                      end
                  end))
end

local clientbuttons = awful.util.table.join(
    awful.button({ }, 1, function (c) client.focus = c; c:raise() end),
    awful.button({ modkey }, 1, awful.mouse.client.move),
    awful.button({ modkey }, 3, awful.mouse.client.resize)
)


-- }}}
return {
    keys = keys,
    mouse_keys = mouse_keys,
    client_keys = clientkeys,
    clientbuttons = clientbuttons
}
