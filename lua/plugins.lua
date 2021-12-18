-- :PackerSync -- confirms up to date
require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'vimwiki/vimwiki'
    -- can specify the config for package directly after listing...
    -- 'vimwiki/vimwiki' = function() 
    -- vim.g.vimwiki_list = {...}
    -- end
end)
