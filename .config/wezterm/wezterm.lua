local wezterm = require("wezterm")

local config = wezterm.config_builder()
config.enable_tab_bar = false
config.font = wezterm.font("JetBrains Mono Nerd Font")
-- config.color_scheme = "Batman"

return config
