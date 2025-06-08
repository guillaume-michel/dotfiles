-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Color Themes

-- local base_theme_name = "3024 (base16)"
-- local base_theme_name = "Abernathy"
local base_theme_name = "Argonaut"

-- Here we customize the base theme to always have pure black background (my preference)
local orilla_color = wezterm.color.get_builtin_schemes()[base_theme_name]
orilla_color.background = "#000000"
orilla_color.scrollbar_thumb = "#AAAAAA"

config.color_schemes = {
	["orilla"] = orilla_color,
}
config.color_scheme = "orilla"

-- Fonts

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 10

config.automatically_reload_config = true
config.enable_tab_bar = true
config.window_close_confirmation = "NeverPrompt" --using it may be a better option
config.enable_scroll_bar = true

config.window_decorations = "RESIZE"
config.window_background_opacity = 1.0

-- Cursor good behavior
config.force_reverse_video_cursor = true

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- and finally, return the configuration to wezterm
return config
