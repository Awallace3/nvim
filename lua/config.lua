vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.wo.number = true
vim.wo.relativenumber = true

vim.o.scrolloff = 8

vim.cmd [[
    set splitright
    autocmd BufWritePre *\(.md\|.diffs\)\@<! :%s/\s\+$//e
]]
    -- autocmd BufWritePre * :%s/\s\+$//e
--vim.cmd [[
--let &t_ZH="\e[3m"
--let &t_ZR="\e[23m"
--]]
vim.cmd [[
    let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
]]
