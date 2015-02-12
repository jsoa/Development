-- Common functions


module("modules.common")

function colorize(color, text)
    return '<span color="'..color..'">'..text..'</span>'
end
