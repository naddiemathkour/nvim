vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- 1. Bootstrap Lazy.nvim (Plugin Manager)
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- 2. Load basic settings and keymaps
require 'core.options'
require 'core.keymaps'
require 'core.apis'
local plugin_specs = require 'core.plugins'
require('lazy').setup(plugin_specs)
