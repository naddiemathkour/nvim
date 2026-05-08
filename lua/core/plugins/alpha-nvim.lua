return {
  'goolord/alpha-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local dashboard = require 'alpha.themes.dashboard'
    -- Customize your header art here
    dashboard.section.header.val = {
      [[                               __                ]],
      [[  __  _  __ ___   ___   __  __/\_\    ___ ___    ]],
      [[ /\ \/ \/ /' __`\/ __`\/\ \/\ \/\ \  /' __` __`\  ]],
      [[ \ \ \_/ \/\  __/\ \L\ \ \ \_/ \ \ \ /\ \/\ \/\ \ ]],
      [[  \ \_\\_\\ \____\ \____/\ \___/\ \_\\ \_\ \_\ \_\]],
      [[   \/_//_/ \/____/\/___/  \/__/  \/_/ \/_/\/_/\/_/]],
      [[                                                 ]],
    }
    -- Customize your buttons
    dashboard.section.buttons.val = {
      dashboard.button('f', '  Find file', ':Telescope find_files <CR>'),
      dashboard.button('e', '  New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button('r', '  Recent files', ':Telescope oldfiles <CR>'),
      dashboard.button('s', '  Settings', ':e ~/.config/nvim/init.lua <CR>'),
      dashboard.button('q', '󰅚  Quit', ':qa<CR>'),
    }
    require('alpha').setup(dashboard.opts)
  end,
}
