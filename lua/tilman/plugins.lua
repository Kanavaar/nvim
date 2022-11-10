vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- use packer
  use 'wbthomason/packer.nvim'

  -- colorscheme
<<<<<<< HEAD
  use 'morhetz/gruvbox'
  use 'kanavaar/edge.vim'
  use 'kanavaar/sonokai'
=======
  use 'kanavaar/edge.vim'
>>>>>>> bc17d14d31b6b5e4046aaf944e630908dc8f4f29

  -- colors shown in neovim
  use 'https://github.com/NvChad/nvim-colorizer.lua'


end)
