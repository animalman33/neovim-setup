

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'neovim/nvim-lspconfig'
	use 'ghifarit53/tokyonight-vim'
	use 'jiangmiao/auto-pairs'
	use 'kyazdani42/nvim-web-devicons' 
	use 'kyazdani42/nvim-tree.lua'
	use "lukas-reineke/indent-blankline.nvim"
	use {'nvim-treesitter/nvim-treesitter', run = 'TSUpdate'}
	use 'folke/tokyonight.nvim'
	use 'akinsho/nvim-bufferline.lua'
	use 'nvim-lua/completion-nvim'
	use 'hoob3rt/lualine.nvim'
	use 'airblade/vim-gitgutter'
	use 'marko-cerovac/material.nvim'
	use {
  "folke/trouble.nvim",
  requires = "kyazdani42/nvim-web-devicons",
  config = function()
    require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
    end
    }
end)
