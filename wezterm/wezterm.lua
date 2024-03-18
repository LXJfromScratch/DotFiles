local wezterm = require 'wezterm'
local config = {
  font = wezterm.font_with_fallback {
    {
      family = 'FiraCode Nerd Font',
      weight = 'Bold',
    },
    {
      family = 'Droid Sans Fallback',
      weight = 'Bold',
    },
  },
  font_size = 14,
  use_fancy_tab_bar = true,
  tab_bar_at_bottom = true,
  hide_tab_bar_if_only_one_tab = true,
  window_background_opacity = 0.3,
}

config.colors = {
  tab_bar = {
    active_tab = {
      bg_color = 'transparent',
      fg_color = '#EAAFFF',
    },
    inactive_tab = {
      bg_color = 'transparent',
      fg_color = '#FFFFFF',
    },
    inactive_tab_hover = {
      bg_color = 'transparent',
      fg_color = '#BFFBBB',
    },
    new_tab = {
      bg_color = 'transparent',
      fg_color = '#87CEFA',
    },
    new_tab_hover = {
      bg_color = 'transparent',
      fg_color = '#00FF00',
    },
  },
}
config.color_scheme = 'Transparent Scheme'

config.color_schemes = {
  ["Transparent Scheme"] = {
    foreground = '#FFFFFF',
    cursor_bg = '#FF34B3',
    -- background = 'transparent',
  }
}

config.window_padding = {
  left = 2,
  right = 2,
  top = 2,
  bottom = 0,
}

config.window_frame = {
  -- The font used in the tab bar.
  -- Roboto Bold is the default; this font is bundled
  -- with wezterm.
  -- Whatever font is selected here, it will have the
  -- main font setting appended to it to pick up any
  -- fallback fonts you may have used there.
  -- font = wezterm.font { family = 'Roboto', weight = 'Bold' },
  font_size = 12.0,
  active_titlebar_bg = 'transparent',
  inactive_titlebar_bg = 'transparent',
}

return config
