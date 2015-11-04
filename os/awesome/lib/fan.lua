
-- Fan RPM
local wibox        = require("wibox")
local first_line   = require("lain.helpers").first_line
local newtimer     = require("lain.helpers").newtimer
local io           = { open = io.open }

local setmetatable = setmetatable


local fan = {}


local function worker(args)
  local args     = args or {}
  local fanfile  = "/sys/class/hwmon/hwmon1/device/fan1_input"
  local timeout  = args.timeout or 2
  local settings = args.settings or function() end

  fan.widget = wibox.widget.textbox('')

  function update()
     local f = io.open(fanfile)

     if f ~= nil
     then
        speed_now = tonumber(f:read())
        f:close()
     else
        speed_now = "N/A"
     end

     widget = fan.widget
     settings()

  end

  newtimer("fan", timeout, update)

  return fan.widget
end


return setmetatable(fan, { __call = function(_, ...) return worker(...) end })
