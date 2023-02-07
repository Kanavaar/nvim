local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  -- colorscheme
  'kanavaar/edge.vim',
  'morhetz/gruvbox',
  'rebelot/kanagawa.nvim',
  'Mofiqul/vscode.nvim',

  -- Dev Icons
  'nvim-tree/nvim-web-devicons',

  -- Lualine
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons'}
  },

  -- Bufferline
  {'akinsho/bufferline.nvim', tag = "v3.*", dependencies = 'nvim-tree/nvim-web-devicons'},
  -- colors shown in neovi
  'NvChad/nvim-colorizer.lua',

  -- Telescope
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  },

  -- Treesitter
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate',},

  -- Undotree
  'mbbill/undotree',

  -- Fugitive
  'tpope/vim-fugitive',

  -- Delimitmate
  'Raimondi/delimitMate',

  -- lsp
  {
    'VonHeikemen/lsp-zero.nvim',
    dependencies = {
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
  },

  -- Emmet
  'mattn/emmet-vim',

  -- Markdown Table Mode
  'dhruvasagar/vim-table-mode',

  -- Yuck Domain Specific Language Plugin For Eww
  'elkowar/yuck.vim',

})
