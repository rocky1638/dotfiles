-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Catppuccin Macchiato'
config.font = wezterm.font 'Liga SFMono Nerd Font'
config.font_size = 13.0
config.window_decorations = 'RESIZE'

config.window_frame = {
  font = wezterm.font { family = 'Liga SFMono Nerd Font' },
  font_size = 13.0,
  active_titlebar_bg = '#1a1c2a'
}

-- config.use_fancy_tab_bar = false
-- config.tab_bar_at_bottom = true

config.window_padding = {
  left = 24,
  right = 24,
  top = 32,
  bottom = 8,
}

config.colors = {
    tab_bar = {
    -- The color of the strip that goes along the top of the window
    -- (does not apply when fancy tab bar is in use)
    background = '#1a1c2a',

    -- The active tab is the one that has focus in the window
    active_tab = {
      -- The color of the background area for the tab
      bg_color = '#24273a',
      -- The color of the text for the tab
      fg_color = '#c0c0c0',
    },

    -- Inactive tabs are the tabs that do not have focus
    inactive_tab = {
      bg_color = '#10121b',
      fg_color = '#808080',
    },

    -- You can configure some alternate styling when the mouse pointer
    -- moves over inactive tabs
    inactive_tab_hover = {
      bg_color = '#2e324a',
      fg_color = '#909090',
      italic = true,
    },

    -- The new tab button that let you create new tabs
    new_tab = {
      bg_color = '#10121b',
      fg_color = '#808080',
    },

    -- You can configure some alternate styling when the mouse pointer
    -- moves over the new tab button
    new_tab_hover = {
      bg_color = '#2e324a',
      fg_color = '#909090',
      italic = true,
    },
  },
}

config.leader = {
  key = ',',
  timeout_milliseconds = 2000,
}

config.keys = {
  {
    key = 'c',
    mods = 'LEADER',
    action = wezterm.action.ActivateCopyMode,
  },
  {
    key = 'f',
    mods = 'LEADER',
    action = act.TogglePaneZoomState,
  },
  -- CTRL + (h,j,k,l) to move between panes
  {
      key = 'h',
      mods = 'CTRL|ALT|CMD',
      action = act.ActivatePaneDirection("Left")
  },
  {
      key = 'j',
      mods = 'CTRL|ALT|CMD',
      action = act.ActivatePaneDirection("Down")
  },
  {
      key = 'k',
      mods = 'CTRL|ALT|CMD',
      action = act.ActivatePaneDirection("Up")
  },
  {
      key = 'l',
      mods = 'CTRL|ALT|CMD',
      action = act.ActivatePaneDirection("Right")
  },
  -- Vertical Split
  {
    -- |
    key = '|',
    mods = 'LEADER',
    action = act.SplitPane {
      direction = 'Right',
      size = { Percent = 50 },
    },
  },
  -- Horizontal split
  {
    -- -
    key = '-',
    mods = 'LEADER',
    action = act.SplitPane {
      direction = 'Down',
      size = { Percent = 50 },
    },
  },
}

local bar = wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm")
bar.apply_to_config(config, {
  max_width = 40,
  separator = {
    space = 1,
  },
  modules = {
    clock = {
      enabled = true
    },
    spotify = {
      enabled = false
    }
  }
})


-- and finally, return the configuration to wezterm
return config

