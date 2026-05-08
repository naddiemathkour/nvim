return {
  'levouh/tint.nvim',
  config = function()
    require('tint').setup {
      tint = -15, -- Darken inactive windows by 30%
      saturation = 0.8, -- Desaturate inactive windows
    }
  end,
}
