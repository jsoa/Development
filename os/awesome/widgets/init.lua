
package.loaded.widgets = nil

local widgets = {
    clock   = require("widgets.clock"),
    mail    = require("widgets.mail"),
    mpd     = require("widgets.mpd"),
    mem     = require("widgets.mem"),
    sys     = require("widgets.sys"),
    vol     = require("widgets.vol"),
    fs      = require("widgets.fs"),
    bat     = require("widgets.bat"),
    net     = require("widgets.net"),
    lb      = require("widgets.lb"),
    fan     = require("widgets.fan"),
    wea     = require("widgets.wea"),
}

return widgets
