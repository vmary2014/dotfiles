local wezterm = require("wezterm")
local theme = require("theme")

local config = wezterm.config_builder()

config.font = theme.font
config.font_size = theme.font_size
config.window_background_gradient = theme.window_background_gradient
config.window_background_opacity = theme.window_background_opacity
config.use_fancy_tab_bar = theme.use_fancy_tab_bar
config.window_decorations = theme.window_decorations
config.window_frame = theme.window_frame
config.colors = theme.colors
config.send_composed_key_when_left_alt_is_pressed = true
config.background = theme.background
config.enable_scroll_bar = theme.enable_scroll_bar
config.window_close_confirmation = 'NeverPrompt'

return config
