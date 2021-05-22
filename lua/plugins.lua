

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'neovim/nvim-lspconfig'
	use 'ghifarit53/tokyonight-vim'
	use 'jiangmiao/auto-pairs'
	use 'kyazdani42/nvim-web-devicons' 
	use 'kyazdani42/nvim-tree.lua'
	use {'lukas-reineke/indent-blankline.nvim' , branch = 'lua'}
	use {'nvim-treesitter/nvim-treesitter', run = 'TSUpdate'}
	use 'folke/tokyonight.nvim'
	use 'akinsho/nvim-bufferline.lua'
	use 'nvim-lua/completion-nvim'
	use 'hoob3rt/lualine.nvim'
	use 'airblade/vim-gitgutter'
end)
