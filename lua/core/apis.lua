-- NeoTree
vim.api.nvim_set_keymap('n', '<c-t>', ':Neotree<CR>', { noremap = true, silent = true })

-- Highlight when yanking (copying) text
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Disabled Keys
vim.api.nvim_set_keymap('n', '<PageUp>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<PageDown>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<PageUp>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<PageDown>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<PageUp>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<PageDown>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('c', '<PageUp>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('c', '<PageDown>', '<Nop>', { noremap = true, silent = true })

-- Tabs
vim.api.nvim_set_keymap('n', 'tn', ':tabnew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-t>l', ':tabmove +1<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-t>h', ':tabmove -1<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'tl', ':tabnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'th', ':tabprevious<CR>', { noremap = true, silent = true })

-- windows
vim.api.nvim_set_keymap('n', '<S-w>n', ':vs | Telescope find_files<CR>', { noremap = true, silent = true })

-- Terminal
vim.api.nvim_set_keymap('n', '<Leader>t', ':sp<CR>:term<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', ':q', [[<C-\><C-n>:q<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', ':h', '<C-\\><C-n>:hide<CR>', { noremap = true, silent = true })

-- Movement
vim.api.nvim_set_keymap('n', '<S-j>', ':JumpLines 10<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-k>', ':JumpUp 10<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':JumpLines 30<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':JumpUp 30<CR>', { noremap = true, silent = true })

-- Command to jump down x lines
vim.api.nvim_create_user_command('JumpLines', function(opts)
  local lines = tonumber(opts.args) or 0
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(tostring(lines) .. 'j', true, false, true), 'n', true)
end, { nargs = 1, complete = 'customlist,v:lua.vim.fn.getline' })

-- Command to jump up x lines
vim.api.nvim_create_user_command('JumpUp', function(opts)
  local lines = tonumber(opts.args) or 0
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(tostring(lines) .. 'k', true, false, true), 'n', true)
end, { nargs = 1, complete = 'customlist,v:lua.vim.fn.getline' })

-- [Tabbing/Spacing]

-- [Color Column]

-- [Errors]
vim.api.nvim_set_keymap('n', '<Leader>e', [[:lua if vim.diagnostic.get(0) then vim.diagnostic.open_float() end<CR>]], { noremap = true, silent = true })
