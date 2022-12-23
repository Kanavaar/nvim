vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- use packer
  use 'wbthomason/packer.nvim'

  -- colorscheme
  use 'morhetz/gruvbox'
  use 'kanavaar/edge.vim'
  use 'rebelot/kanagawa.nvim'

  -- colors shown in neovim
  use 'NvChad/nvim-colorizer.lua'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }


end)
