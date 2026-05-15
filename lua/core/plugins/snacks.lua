return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- Enable the core modules you want active
    bigfile = { enabled = true },
    dashboard = { enabled = false },
    indent = {
      enabled = true,
      animate = {
        enabled = false,
      },
    },
    input = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },

    -- Optional: Only enable these if you intend to replace
    -- telescope/oil with snacks equivalents
    picker = {
      enabled = false,
      ui_select = true,
    },
    explorer = { enabled = false },
  },
}
