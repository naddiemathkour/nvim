-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Command to jump down x lines
vim.api.nvim_create_user_command('JumpLines', function(opts)
  local lines = tonumber(opts.args) or 0
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(tostring(lines) .. 'j', true, false, true), 'n', true)
end, { nargs = 1 })

-- Command to jump up x lines
vim.api.nvim_create_user_command('JumpUp', function(opts)
  local lines = tonumber(opts.args) or 0
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(tostring(lines) .. 'k', true, false, true), 'n', true)
end, { nargs = 1 })
