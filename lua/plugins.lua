return require("packer").startup(function()
	use("wbthomason/packer.nvim")
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use("neovim/nvim-lspconfig")
	use("williamboman/nvim-lsp-installer")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("folke/tokyonight.nvim")
	-- use 'glepnir/dashboard-nvim'
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
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
	}
	use("lukas-reineke/indent-blankline.nvim")
	use("petertriho/nvim-scrollbar")
	-- use("projekt0n/github-nvim-theme")
	use({
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	})
	use("rcarriga/nvim-notify")
	use("jose-elias-alvarez/null-ls.nvim")
	use("rafamadriz/friendly-snippets")
	-- use({ "akinsho/bufferline.nvim", requires = "kyazdani42/nvim-web-devicons" })
	use({
		"TimUntersberger/neogit",
		requires = "nvim-lua/plenary.nvim",
		cmd = { "Neogit" },
		config = function()
			require("neogit").setup({
				integrations = { diffview = true },
			})
			require("diffview").setup({})
		end
	})
	use({
		"sindrets/diffview.nvim",
		requires = "nvim-lua/plenary.nvim",
		cmd = { "Neogit" }
	})
	use "lewis6991/impatient.nvim"
	use "mfussenegger/nvim-dap"
	use "mfussenegger/nvim-dap-python"
	use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
	-- use { "phaazon/hop.nvim",
	-- 	branch = "v1",
	-- 	config = function()
	-- 		require 'hop'.setup {
	-- 			case_insensitive = true,
	-- 			char2_fallback_key = '<CR>',
	--
	-- 		}
	-- 	end
	-- }
	-- use "numToStr/Comment.nvim"
	-- use {
	--     "nvim-neorg/neorg",
	--     config = function()
	--         require('neorg').setup {
	--
	--         }
	--     end,
	--     requires = "nvim-lua/plenary.nvim",
	-- }
	use 'ray-x/lsp_signature.nvim'
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use "EdenEast/nightfox.nvim"
	use { 'echasnovski/mini.nvim', branch = 'stable' }
	use({ "iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" }, })
	use {
		"ahmedkhalf/project.nvim",
		config = function()
			require("project_nvim").setup {
				update_cwd = true,
				respect_buf_cwd = true,
				update_focused_file = {
					enable = true,
					update_cwd = true
				}
			}
		end
	}
	use 'ggandor/lightspeed.nvim'
	use 'tpope/vim-repeat'
end)
