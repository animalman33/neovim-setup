return require("packer").startup(function() use("wbthomason/packer.nvim")
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("neovim/nvim-lspconfig")
	use("folke/tokyonight.nvim")
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use("EdenEast/nightfox.nvim")
	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		cmd = { 'TroubleToggle' },
		config = function()
			require("trouble").setup({})
		end
	})
	use("nvim-lua/plenary.nvim")
	use {
		'nvim-telescope/telescope.nvim',
		requires = { { 'nvim-lua/plenary.nvim' } }
	} use("lukas-reineke/indent-blankline.nvim")
	use("petertriho/nvim-scrollbar")
	use({
		"folke/which-key.nvim",
	})
	use("rcarriga/nvim-notify")
	use("jose-elias-alvarez/null-ls.nvim")
	use({ "TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim" })
	use({
		"sindrets/diffview.nvim",
		requires = "nvim-lua/plenary.nvim",
	})
	use "lewis6991/impatient.nvim"
	use "mfussenegger/nvim-dap"
	use "mfussenegger/nvim-dap-python"
	use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
	use 'ray-x/lsp_signature.nvim'
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use { 'echasnovski/mini.nvim', branch = 'stable' }
	use({ "iamcco/markdown-preview.nvim",
		run = function()
			vim.fn("mkdp#util#install")
		end,
		setup = function()

			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" }, })
	use "ahmedkhalf/project.nvim"
	use 'ggandor/leap.nvim'
	use 'tpope/vim-repeat'
	use 'antoinemadec/FixCursorHold.nvim'
	use { "akinsho/toggleterm.nvim", tag = 'v2.*' }
	use 'glepnir/dashboard-nvim'
	use { "williamboman/mason.nvim" }
	use 'simrat39/rust-tools.nvim'
	use "williamboman/mason-lspconfig.nvim"
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
	use "rafamadriz/friendly-snippets"
	-- use { 'ms-jpq/coq_nvim',
	-- 	branch = 'coq' }
	-- use { 'ms-jpq/coq.artifacts',
	-- 	branch = 'artifacts' }
	-- use { 'ms-jpq/coq.thirdparty',
	-- 	branch = '3p' }
	use {"windwp/nvim-autopairs"}
end)
