vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- use packer
  use 'wbthomason/packer.nvim'

  -- colorscheme
  use 'morhetz/gruvbox'
  use 'kanavaar/edge.vim'
  use 'kanavaar/sonokai'

  -- colors shown in neovim
  use 'https://github.com/NvChad/nvim-colorizer.lua'


end)
