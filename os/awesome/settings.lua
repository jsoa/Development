
-- Common settings

local modkey     = "Mod4"
local altkey     = "Mod1"
local terminal   = "urxvtc" or "xterm"
local editor     = "emacs"
local editor_cmd = terminal .. " -e " .. editor


local browser    = "dwb"
local browser2   = "iron"
local gui_editor = "emacs"
local graphics   = "gimp"
local mail       = terminal .. " -e mutt "
local iptraf     = terminal .. " -g 180x54-20+34 -e sudo iptraf-ng -i all "
local musicplr   = terminal .. " -g 130x34-320+16 -e ncmpcpp "

return {
    modkey = modkey,
    altkey = altkey,
    terminal = terminal,
    editor = editor,
    editor_cmd = editor_cmd,
    browser = browser,
    browser2 = browser2,
    gui_editor = gui_editor,
    graphics = graphics,
    mail = mail,
    iptraf = iptraf,
    musicplr = musicplr
}
