
-- Rules

local awful      = require("awful")
awful.rules      = require("awful.rules")

local beautiful = require("beautiful")
local bindings  = require("bindings")
local tags      = require("tags").tags

beautiful.init(os.getenv("HOME") .. "/.config/awesome/theme.lua")

awful.rules.rules = {
    -- All clients will match this rule.
    { rule = { },
      properties = { border_width = beautiful.border_width,
                     border_color = beautiful.border_normal,
                     focus = awful.client.focus.filter,
                     keys = bindings.client_keys,
                     buttons = bindings.clientbuttons,
	                   size_hints_honor = false } },
    { rule = { class = "URxvt" },
          properties = { opacity = 0.99 } },

    { rule = { class = "MPlayer" },
          properties = { floating = true } },

    { rule = { class = "Chromium" },
          properties = { tag = tags[1][1] } },

    { rule = { class = "Iron" },
          properties = { tag = tags[1][1] } },

    { rule = { instance = "plugin-container" },
          properties = { tag = tags[1][1] } },

    { rule = { class = "Gimp" },
          properties = { tag = tags[1][4] } },

    { rule = { class = "Emacs" },
         properties = { tag = tags[1][2] } },

    { rule = { class = "Gimp", role = "gimp-image-window" },
          properties = { maximized_horizontal = true,
                         maximized_vertical = true } },
}
