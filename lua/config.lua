vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.wo.number = true
vim.wo.relativenumber = true
-- vim.api.nvim_command('setlocal spell spelllang=en_us')
--
vim.api.nvim_create_autocmd("FileType", {
    pattern = {"md", "tex", "vimwiki"},
    callback = function()
        vim.api.nvim_command('setlocal spell spelllang=en_us')
        vim.api.nvim_command('set spellsuggest+=10')
        -- vim.g.languagetool_server_jar =
        --     "/usr/local/Cellar/languagetool/5.7/libexec/languagetool-server.jar"
        -- vim.g.languagetool_server_command = "echo Server Started"
    end

})

vim.o.scrolloff = 8

vim.g.markdown_fenced_languages = {'python', 'cpp'}

vim.cmd [[
    set splitright
    autocmd BufWritePre *\(.md\|.diffs\|\wmain.py\)\@<! :%s/\s\+$//e
]]

-- autocmd BufWritePre * :%s/\s\+$//e
-- vim.cmd [[
-- let &t_ZH="\e[3m"
-- let &t_ZR="\e[23m"
-- ]]
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
