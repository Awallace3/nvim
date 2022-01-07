-- vim.api.nvim_set_keymap({mode}, {keymap}, {mapped to}, {options})
local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true}
keymap('i', 'jj', '<ESC>', opts)
-- keymap('n', ' ', '<Leader>', opts)
vim.g.mapleader = ' '

-- closing tags
-- keymap('i', '{', '{<CR>}<Esc>ko', opts)
--keymap('i', '{', '{<CR>}<Esc>ko', opts)
--keymap('i', '(', '()<Esc>i', opts)
--keymap('i', '[', '[]<Esc>i', opts)
--keymap('i', '"', '""<Esc>i', opts)
--keymap('i', "'", "''<Esc>i", opts)
--keymap('i', '$', '$$<Esc>i', opts)
--keymap('i', "<", "<><Esc>i", opts)
--keymap('i', "<", "<><Esc>i", opts)
require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})

keymap('n', '<c-s>', ':w<CR>', {})
keymap('i', '<c-s>', '<ESC>:w<CR>a', {})

keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', '<c-h>', '<c-w>h', opts)
keymap('n', '<c-k>', '<c-w>k', opts)
keymap('n', '<c-l>', '<c-w>l', opts)

-- keymap('n', '<Leader>R', ":lua Test()<CR>", opts)
-- keymap('n', '<Leader>R', ":lua File_type(%)", opts)
-- keymap('n', '<Leader>R', ":terminal /Users/austinwallace/.config/nvim/lua/run-module/file_type.lua ", opts)

keymap('n', '<Leader>L', ":terminal lua %<CR>", opts)
keymap('n', '<Leader>P', ":terminal python3 %<CR>", opts)
-- Telescope
keymap('n', '<Leader>f', ':Telescope find_files<cr>', {})
keymap('n', '<Leader>r', ':Telescope live_grep<cr>', {})

-- Database with dadbod
keymap('n', '<Leader>du', ':DBUIToggle<cr>', {})
keymap('n', '<Leader>df', ':DBUIFindBuffer<cr>', {})
keymap('n', '<Leader>dr', ':DBUIRenameBuffer<cr>', {})
keymap('n', '<Leader>dl', ':DBUILastQueryInfo<cr>', {})
vim.g['db_ui_save_location']= '~/.config/db_ui'
