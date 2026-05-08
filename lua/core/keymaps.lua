local map = vim.keymap.set

-- Clear highlights on search when pressing <Esc> in normal mode
map('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
map('t', ':q', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
map('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
map('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
map('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
map('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
-- Use CTRL+<hjkl> to switch between windows
map('n', '<S-w>h', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<S-w>l', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<S-w>j', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<S-w>k', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
