return {
  'goolord/alpha-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local dashboard = require 'alpha.themes.dashboard'

    -- Smooth Unicode Box Header
    dashboard.section.header.val = {
      [[╭─────────────────────────────────────────────────────────────────────────────────────────────────────╮]],
      [[│                                                                                                     │]],
      [[│                                                    ░██                                 ░██          │]],
      [[│    ░██                                             ░██                                ░██    ░██    │]],
      [[│   ░██    ░██░████  ░███████   ░███████   ░███████  ░██ ░██    ░██  ░███████          ░██      ░██   │]],
      [[│  ░██     ░███     ░██    ░██ ░██        ░██    ░██ ░██ ░██    ░██ ░██    ░██       ░██         ░██  │]],
      [[│   ░██    ░██      ░█████████  ░███████  ░██    ░██ ░██  ░██  ░██  ░█████████      ░██        ░██    │]],
      [[│    ░██   ░██      ░██               ░██ ░██    ░██ ░██   ░██░██   ░██            ░██        ░██     │]],
      [[│          ░██       ░███████   ░███████   ░███████  ░██    ░███     ░███████     ░██                 │]],
      [[│                                                                                                     │]],
      [[╰─────────────────────────────────────────────────────────────────────────────────────────────────────╯]],
    }

    -- Combined Button Box
    dashboard.section.buttons.opts.spacing = 0

    local button_top = {
      type = 'text',
      val = '╭──────────────────────────────────────────────────╮',
      opts = { hl = 'Type', position = 'center' },
    }

    local button_bottom = {
      type = 'text',
      val = '╰──────────────────────────────────────────────────╯',
      opts = { hl = 'Type', position = 'center' },
    }

    dashboard.section.buttons.val = {
      button_top,
      dashboard.button('f', '│    Find file                                    ', ':Telescope find_files <CR>'),
      dashboard.button('e', '│    New file                                     ', ':ene <BAR> startinsert <CR>'),
      dashboard.button('r', '│    Recent files                                 ', ':Telescope oldfiles <CR>'),
      dashboard.button('s', '│    Settings                                     ', ':e ~/.config/nvim/init.lua <CR>'),
      dashboard.button('q', '│  󰅚  Quit                                         ', ':qa<CR>'),
      button_bottom,
    }
    require('alpha').setup(dashboard.opts)
  end,
}
