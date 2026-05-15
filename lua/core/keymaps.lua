local map = vim.keymap.set

-- Clear highlights on search when pressing <Esc> in normal mode
map('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
map('n', '<leader>e', function()
  if vim.diagnostic.get(0)[1] then
    vim.diagnostic.open_float()
  end
end, { desc = 'Open diagnostic float' })

-- Terminal
map('n', '<leader>t', ':sp<CR>:term<CR>', { desc = 'Open terminal split', silent = true })
map('t', ':q', [[<C-\><C-n>:q<CR>]], { desc = 'Exit and close terminal', silent = true })
map('t', ':h', '<C-\\><C-n>:hide<CR>', { desc = 'Hide terminal', silent = true })

-- Disable arrow keys in normal mode
map('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
map('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
map('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
map('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Disable PageUp/PageDown in all modes
for _, mode in ipairs { 'n', 'i', 'v', 'c' } do
  map(mode, '<PageUp>', '<Nop>', { silent = true })
  map(mode, '<PageDown>', '<Nop>', { silent = true })
end

-- Split navigation
map('n', '<S-w>h', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<S-w>l', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<S-w>j', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<S-w>k', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
map('n', '<S-w>n', ':vs | Telescope find_files<CR>', { desc = 'New vsplit with file picker', silent = true })

-- Tabs
map('n', 'tn', ':tabnew<CR>', { desc = 'New tab', silent = true })
map('n', '<S-t>l', ':tabmove +1<CR>', { desc = 'Move tab right', silent = true })
map('n', '<S-t>h', ':tabmove -1<CR>', { desc = 'Move tab left', silent = true })
map('n', 'tl', ':tabnext<CR>', { desc = 'Next tab', silent = true })
map('n', 'th', ':tabprevious<CR>', { desc = 'Previous tab', silent = true })

-- NeoTree
map('n', '<C-t>', ':Neotree<CR>', { desc = 'Toggle NeoTree', silent = true })

-- Movement (large jumps)
map('n', '<S-j>', ':JumpLines 10<CR>', { desc = 'Jump 10 lines down', silent = true })
map('n', '<S-k>', ':JumpUp 10<CR>', { desc = 'Jump 10 lines up', silent = true })
map('n', '<C-j>', ':JumpLines 30<CR>', { desc = 'Jump 30 lines down', silent = true })
map('n', '<C-k>', ':JumpUp 30<CR>', { desc = 'Jump 30 lines up', silent = true })
