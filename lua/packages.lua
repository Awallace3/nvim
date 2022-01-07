-- :PackerSync -- confirms up to date
local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  -- colorschemes
  use 'tomasr/molokai'
  use 'rose-pine/neovim'
  use 'arcticicestudio/nord-vim'
  use 'folke/tokyonight.nvim'
  use {'sonph/onehalf', rtp = 'vim/'}
  use 'maxmellon/vim-jsx-pretty'
  use 'yuezk/vim-js'
  use 'maxmellon/vim-jsx-pretty'

  use {
    'vimwiki/vimwiki',
    config = function()
      vim.g.vimwiki_list = {{path = '~/', syntax = 'markdown', ext = '.md'}}
      vim.g.vimwiki_ext2syntax = {['.md'] = 'markdown', ['.markdown'] = 'markdown', ['.mdown'] = 'markdown'}
    end
  }

  use {
    'goolord/alpha-nvim',
    requires = {'kyazdani42/nvim-web-devicons'},
    config = function()
      require'alpha'.setup(require'alpha.themes.startify'.opts)
      local startify = require("alpha.themes.startify")
      startify.section.bottom_buttons.val = {
        startify.button("e", "new file", ":ene <bar> startinsert <cr>"), startify.button("v", "neovim config", ":e ~/.config/nvim/init.lua<cr>"),
        startify.button("q", "quit nvim", ":qa<cr>"), startify.button("t", "life.org", ":e ~/.life.org<cr>")
      }
      vim.api.nvim_set_keymap('n', '<c-n>', ":Alpha<cr>", {noremap = true})
    end
  }
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', highlight = {enable = true}}
  use {'nvim-telescope/telescope.nvim', requires = {'nvim-lua/plenary.nvim'}}

  -- need to configure
  use {'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}
  -- lsp
  use 'neovim/nvim-lspconfig'

  use({"hrsh7th/nvim-cmp", requires = {{"kdheepak/cmp-latex-symbols"}}, sources = {{name = "latex_symbols"}}})
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  -- use 'hrsh7th/nvim-cmp'
  -- use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  -- Installation
  -- snippets
  use 'rafamadriz/friendly-snippets'
  use {'L3MON4D3/LuaSnip'}
  use {
    'hrsh7th/nvim-cmp',
    config = function()
      require'cmp'.setup {
        snippet = {
          expand = function(args)
            require'luasnip'.lsp_expand(args.body)
          end
        },
        sources = {
          {name = 'luasnip'}
          -- more sources
        }
      }
    end
  }
  use {'saadparwaiz1/cmp_luasnip'}

  use 'onsails/lspkind-nvim'

  use 'lervag/vimtex'

  -- formatter
  -- use 'mhartington/formatter.nvim'
  use 'lukas-reineke/format.nvim'

  use {'folke/which-key.nvim'}

  -- use 'voldikss/vim-floaterm'
  use 'akinsho/toggleterm.nvim'

  use {'tami5/lspsaga.nvim', config = "require('lspsaga-config')"}
  -- can specify the config for package directly after listing...
  -- 'vimwiki/vimwiki' = function()
  -- vim.g.vimwiki_list = {...}
  -- end
  -- orgmode
  use {'nvim-treesitter/nvim-treesitter'}
  use {
    'nvim-orgmode/orgmode',
    config = function()
      require('orgmode').setup {}
    end
  }

  -- Database
  use {'tpope/vim-dadbod'}
  use {'kristijanhusak/vim-dadbod-ui'}

  -- remote server editing with distant
  use {
    'chipsenkbeil/distant.nvim',
    config = function()
      require('distant').setup {
        -- Applies Chip's personal settings to every machine you connect to
        --
        -- 1. Ensures that distant servers terminate with no connections
        -- 2. Provides navigation bindings for remote directories
        -- 3. Provides keybinding to jump into a remote file's parent directory
        ['*'] = require('distant.settings').chip_default()
      }
    end
  }

  use 'windwp/nvim-autopairs'
  use 'GoldsteinE/compe-latex-symbols'
  use 'p00f/nvim-ts-rainbow'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'numToStr/Comment.nvim'

end)

