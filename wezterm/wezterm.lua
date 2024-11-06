local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Afterglow"
config.font = wezterm.font("JetBrains Mono")
config.hide_tab_bar_if_only_one_tab = true
config.font_size = 12.0

config.keys = {
	-- from https://github.com/wez/wezterm/issues/253
	-- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
	{ key = "LeftArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bb" }) },
	-- Make Option-Right equivalent to Alt-f; forward-word
	{ key = "RightArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bf" }) },
	{ key = "n", mods = "OPT", action = wezterm.action({ SendString = "~" }) },
}

config.send_composed_key_when_left_alt_is_pressed = true
config.window_decorations = "RESIZE"

return config
