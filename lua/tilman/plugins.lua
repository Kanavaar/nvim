vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- use packer
  use 'wbthomason/packer.nvim'

  -- colorscheme
  use 'morhetz/gruvbox'
  use 'kanavaar/edge.vim'
  use 'rebelot/kanagawa.nvim'

  -- Dev Icons
  use('kyazdani42/nvim-web-devicons')

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Bufferline
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

  -- colors shown in neovim
  use {'NvChad/nvim-colorizer.lua'}

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Treesitter
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- Undotree
  use ('mbbill/undotree')

  -- Fugitive
  use ('tpope/vim-fugitive')

  -- Delimitmate
  use('Raimondi/delimitMate')

  -- lsp
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }

  -- Emmet
  use {
    'mattn/emmet-vim',
    ft = {"html"},
  }


end)
