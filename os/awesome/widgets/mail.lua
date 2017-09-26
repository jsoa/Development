
-- Mail

local awful      = require("awful")
local beautiful  = require("beautiful")
local lain       = require("lain")
local wibox      = require("wibox")

beautiful.init(os.getenv("HOME") .. "/.config/awesome/theme.lua")

local mailicon = wibox.widget.imagebox(beautiful.widget_mail)
mailicon:buttons(awful.util.table.join(
    awful.button({ }, 1,
        function ()
            awful.util.spawn(mail)
        end
    ))
)

local mailwidget = lain.widget.imap({
    timeout  = 180,
    server   = "server",
    mail     = "email",
    password = "keyring get mymail",
    settings = function()
        if mailcount > 0 then
            widget:set_text(" " .. mailcount .. " ")
            mailicon:set_image(beautiful.widget_mail_on)
        else
            widget:set_text("")
            mailicon:set_image(beautiful.widget_mail)
        end
    end
})

return {
    mailicon = mailicon,
    mailwidget = mailwidget
}
