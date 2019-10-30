
-- Rules

local awful      = require("awful")
awful.rules      = require("awful.rules")

local beautiful = require("beautiful")
local bindings  = require("bindings")
local tags      = require("tags").tags
local screen    = screen

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
      properties = {
         tag = function() return screen.count() > 1 and tags[2][2] or tags[1][2] end
      }
    },

    { rule = { class = "XTerm" },
      properties = {
         tag = function() return screen.count() > 1 and tags[2][3] or tags[1][3] end
      }
    },

    { rule = { class = "Soffice" },
      properties = {
         tag = function() return screen.count() > 1 and tags[2][4] or tags[1][4] end,
         fullscreen = true,
         skip_taskbar = true,
         focus = true
      }
    },

    { rule = { class = "Nautilus" },
      properties = {
         tag = function() return screen.count() > 1 and tags[2][4] or tags[1][4] end
      }
    },

    { rule = { class = "Gimp", role = "gimp-image-window" },
          properties = { maximized_horizontal = true,
                         maximized_vertical = true } },
}
