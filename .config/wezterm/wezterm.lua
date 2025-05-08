local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.window_background_opacity = 0.64
config.hide_tab_bar_if_only_one_tab = true

config.line_height = 1.0
config.font_size = 14

-- config.font = wezterm.font(
--	"JetBrainsMono Nerd Font",
--	{ weight = "Regular", italic = false }
--)
-- config.harfbuzz_features = {
--         "cv12",
--         "ss05",
--         "cv06",
--         "cv30",
--         "ss03",
--         "clig",
--         "liga",
-- }


config.font = wezterm.font_with_fallback({
  { family = "Maple Mono NF", weight = "Regular" }, -- base font
  "JetBrains Mono",                         -- fallback for symbols if needed
})

local wezterm = require "wezterm"

function scheme_for_appearance(appearance)
  if appearance:find "Dark" then
    return "Catppuccin Mocha" -- Mocha, Macchiato, Frappe, Latte
  else
    return "Catppuccin Latte"
  end
end

config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())
-- config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }

return config
