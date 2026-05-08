return {
  'levouh/tint.nvim',
  config = function()
    require('tint').setup {
      tint = -30, -- Darken inactive windows by 30%
      saturation = 0.6, -- Desaturate inactive windows
    }
  end,
}
