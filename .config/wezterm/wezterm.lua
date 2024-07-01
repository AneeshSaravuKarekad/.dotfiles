local wezterm = require("wezterm")

local config = wezterm.config_builder()
-- NOTE: must be disabled for it to work properly on Hyprland
config.enable_wayland = false
config.hide_tab_bar_if_only_one_tab = true 
config.color_scheme = "Catppuccin Mocha" -- or Macchiato, Frappe, Latte
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.adjust_window_size_when_changing_font_size = false
config.font_size = 11.0

return config
