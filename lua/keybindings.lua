-- vim.api.nvim_set_keymap({mode}, {keymap}, {mapped to}, {options})
local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true}
keymap('i', 'jj', '<ESC>', opts)
-- keymap('n', ' ', '<Leader>', opts)
vim.g.mapleader = ' '

-- closing tags
-- keymap('i', '{', '{<CR>}<Esc>ko', opts)
-- keymap('i', '{', '{<CR>}<Esc>ko', opts)
-- keymap('i', '(', '()<Esc>i', opts)
-- keymap('i', '[', '[]<Esc>i', opts)
-- keymap('i', '"', '""<Esc>i', opts)
-- keymap('i', "'", "''<Esc>i", opts)
-- keymap('i', '$', '$$<Esc>i', opts)
-- keymap('i', "<", "<><Esc>i", opts)
-- keymap('i', "<", "<><Esc>i", opts)
require('nvim-autopairs').setup({disable_filetype = {"TelescopePrompt", "vim"}})

keymap('n', '<c-s>', ':w<CR>', {})
keymap('i', '<c-s>', '<ESC>:w<CR>a', {})

keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', '<c-h>', '<c-w>h', opts)
keymap('n', '<c-k>', '<c-w>k', opts)
keymap('n', '<c-l>', '<c-w>l', opts)

keymap('n', ']b', ':bn<cr>', opts)
keymap('n', '[b', ':bprevious<cr>', opts)

-- keymap('n', '<Leader>R', ":lua Test()<CR>", opts)
-- keymap('n', '<Leader>R', ":lua File_type(%)", opts)
-- keymap('n', '<Leader>R', ":terminal /Users/austinwallace/.config/nvim/lua/run-module/file_type.lua ", opts)

keymap('n', '<Leader>L', ":terminal lua %<CR>", opts)
keymap('n', '<Leader>P', ":terminal python3 %<CR>", opts)
-- Telescope
keymap('n', '<Leader>f', ':Telescope find_files<cr>', {})
keymap('n', '<Leader>r', ':Telescope live_grep<cr>', {})

keymap('n', '<Leader>n', ':NERDTreeToggle<cr>', {})
keymap('n', '<Leader>b', ':BufferLinePick<cr>', {})

-- nabla
keymap('n', '<F5>', ':lua require("nabla").action()<cr>', {})
keymap('n', '<leader>p', ':lua require("nabla").popup()<cr>', {})

-- Database with dadbod
keymap('n', '<Leader>du', ':DBUIToggle<cr>', {})
keymap('n', '<Leader>df', ':DBUIFindBuffer<cr>', {})
keymap('n', '<Leader>dr', ':DBUIRenameBuffer<cr>', {})
keymap('n', '<Leader>dl', ':DBUILastQueryInfo<cr>', {})
vim.g['db_ui_save_location'] = '~/.config/db_ui'

keymap('n', '<Leader>ew', ':HopWord<cr>', {})
keymap('n', '<Leader>ec', ':HopChar1<cr>', {})
keymap('n', '<Leader>el', ':HopLine<cr>', {})
keymap('n', '<Leader>ee', ':MdEval<cr>', {})
keymap('n', '<Leader>em', ':MarkdownPreview<cr>', {})

keymap('v', '<Leader>w', "<esc>:'<,'>s/$/  /<cr>/added_whitespace<cr>", opts)
keymap('v', '<Leader>y', '"+y', opts)

keymap('n', '<Leader>F', ':Neoformat<cr>', {})
-- magma

-- keymap('n', '<silent><expr><LocalLeader>r', ':MagmaEvaluateOperator<CR>', opts )
-- keymap('n', '<silent>       <LocalLeader>rr', ':MagmaEvaluateLine<CR>'    , opts )
-- keymap('n', '<silent>       <LocalLeader>r ', ':<C-u>MagmaEvaluateVisual<CR>', opts)
-- keymap('n', '<silent>       <LocalLeader>rc', ':MagmaReevaluateCell<CR>'  , opts )
-- keymap('n', '<silent>       <LocalLeader>rd', ':MagmaDelete<CR>'          , opts )
-- keymap('n', '<silent>       <LocalLeader>ro', ':MagmaShowOutput<CR>'      , opts )

-- let g:magma_automatically_open_output = v:false
-- spell
keymap('n', '<Leader>z', '1z=', {})

keymap('i', '<c-f>', 'copilot#Accept("<CR>")', {expr = true, script = true})
vim.g['copilot_no_tab_map'] = true
