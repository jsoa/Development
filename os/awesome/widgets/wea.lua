
-- Weather
local beautiful = require("beautiful")
local lain      = require("lain")

beautiful.init(os.getenv("HOME") .. "/.config/awesome/theme.lua")

local weather = lain.widget.weather({
      city_id = 4143861,
      units = 'imperial',
      settings = function()
         units = math.floor(weather_now["main"]["temp"])
         widget:set_markup(" " .. units .. " ")
      end
})

return {
   weather = weather,
}
