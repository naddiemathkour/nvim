return {
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- Modularized local plugins
  require 'core.plugins.alpha-nvim',
  require 'core.plugins.auto-complete',
  require 'core.plugins.auto-format',
  require 'core.plugins.autopairs',
  require 'core.plugins.debug',
  require 'core.plugins.fuzzy-finder',
  require 'core.plugins.gitsigns',
  require 'core.plugins.indent_line',
  require 'core.plugins.lazy-dev',
  require 'core.plugins.lint',
  require 'core.plugins.lsp-config',
  require 'core.plugins.mini-nvim',
  require 'core.plugins.neo-tree',
  require 'core.plugins.theme',
  require 'core.plugins.tint',
  require 'core.plugins.todos',
  require 'core.plugins.tree-sitter',
  require 'core.plugins.which-key',
}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
}
