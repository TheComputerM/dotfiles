local wezterm = require 'wezterm'

return {
	color_scheme = "Catppuccin Mocha",
	hide_tab_bar_if_only_one_tab = true,
	tab_bar_at_bottom = true,
	use_fancy_tab_bar = false,
	font = wezterm.font 'JetBrainsMono Nerd Font',
	enable_kitty_keyboard = true,
	window_padding = {
		left = 12,
		right = 12,
		top = 12,
		bottom = 0,
	},
	disable_default_key_bindings = true,
	leader = { key = 'Space', mods = 'CTRL' },
	keys = {
		-- Copy and Paste from Clipboard
		{ key = 'c', mods = 'CTRL|SHIFT', action = wezterm.action({ CopyTo = "Clipboard" }) },
		{ key = 'v', mods = 'CTRL|SHIFT', action = wezterm.action({ PasteFrom = "Clipboard" }) },
		{ key = 'c', mods = 'ALT', action = wezterm.action({ CopyTo = "Clipboard" }) },
		{ key = 'v', mods = 'ALT', action = wezterm.action({ PasteFrom = "Clipboard" }) },

		-- LEADER+t will open new tab
		{ key = 't', mods = 'LEADER', action = wezterm.action({ SpawnTab="CurrentPaneDomain" }) },

		-- LEADER+x will close the active tab
		{ key = 'x', mods = 'LEADER', action = wezterm.action.CloseCurrentTab{confirm=true} },

		-- LEADER+[ activates the tab on the left
		{ key = '[', mods = 'LEADER', action = wezterm.action.ActivateTabRelative(-1) },

		-- LEADER+] activates the tab on the left
		{ key = ']', mods = 'LEADER', action = wezterm.action.ActivateTabRelative(1) },

		-- LEADER+Space
		{ key = ' ', mods = 'LEADER', action = wezterm.action.ShowTabNavigator },

		-- LEADER+p
		{ key = 'p', mods = 'LEADER', action = wezterm.action.ActivateCommandPalette },

		-- LEADER-"\" will split vertically
		{
			key = "\\",
			mods = "LEADER",
			action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } })
    	},
		-- LEADER-"-" will split horizontally
		{
			key = "-",
			mods = "LEADER",
			action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } })
		},

		-- LEADER-h activates the pane on the left
		{ key = "LeftArrow", mods = "LEADER", action = wezterm.action({ ActivatePaneDirection = "Left" }) },
		{ key = "h", mods = "LEADER", action = wezterm.action({ ActivatePaneDirection = "Left" }) },

		-- LEADER-l activates the pane on the right
		{ key = "RightArrow", mods = "LEADER", action = wezterm.action({ ActivatePaneDirection = "Right" }) },
		{ key = "l", mods = "LEADER", action = wezterm.action({ ActivatePaneDirection = "Right" }) },

		-- LEADER-k activates the pane on the top
		{ key = "UpArrow", mods = "LEADER", action = wezterm.action({ ActivatePaneDirection = "Up" }) },
		{ key = "k", mods = "LEADER", action = wezterm.action({ ActivatePaneDirection = "Up" }) },

		-- LEADER-j activates the pane on the bottom
		{ key = "DownArrow", mods = "LEADER", action = wezterm.action({ ActivatePaneDirection = "Down" }) },
		{ key = "j", mods = "LEADER", action = wezterm.action({ ActivatePaneDirection = "Down" }) },
	}
}
