return {
	"folke/lazy.nvim",
 	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
 	"neovim/nvim-lspconfig",
 	{
 		"nvim-lualine/lualine.nvim",
 		dependencies = { "kyazdani42/nvim-web-devicons", opt = true },
 	},
 	"EdenEast/nightfox.nvim",
 	{
 		"folke/trouble.nvim",
 		dependencies = "kyazdani42/nvim-web-devicons",
 		cmd = { 'TroubleToggle' },
 		init = function()
 			require("trouble").setup({})
 		end
 	},
 	("nvim-lua/plenary.nvim"),
 	{
 		'nvim-telescope/telescope.nvim',
 		dependencies = { { 'nvim-lua/plenary.nvim' } }
 	},
 	("lukas-reineke/indent-blankline.nvim"),
 	("petertriho/nvim-scrollbar"),
 	({
 		"folke/which-key.nvim",
 	}),
 	("rcarriga/nvim-notify"),
 	("jose-elias-alvarez/null-ls.nvim"),
 	({ "TimUntersberger/neogit", dependencies = "nvim-lua/plenary.nvim" }),
 	({
 		"sindrets/diffview.nvim",
 		dependencies = "nvim-lua/plenary.nvim",
 	}),
 	"lewis6991/impatient.nvim",
 	"mfussenegger/nvim-dap",
 	"mfussenegger/nvim-dap-python",
 	{ "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap" } },
 	'ray-x/lsp_signature.nvim',
 	{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
 	{ 'echasnovski/mini.nvim', branch = 'stable' },
 	"ahmedkhalf/project.nvim",
 	'ggandor/leap.nvim',
 	'tpope/vim-repeat',
 	'antoinemadec/FixCursorHold.nvim',
 	{ "akinsho/toggleterm.nvim", version = 'v2.*' },
 	'glepnir/dashboard-nvim',
 	{ "williamboman/mason.nvim" },
 	'simrat39/rust-tools.nvim',
 	"williamboman/mason-lspconfig.nvim",
 	'hrsh7th/cmp-nvim-lsp',
 	'hrsh7th/cmp-buffer',
 	'hrsh7th/cmp-path',
 	'hrsh7th/cmp-cmdline',
 	'hrsh7th/nvim-cmp',
 	'L3MON4D3/LuaSnip',
 	'saadparwaiz1/cmp_luasnip',
 	"rafamadriz/friendly-snippets",
 	-- use { 'ms-jpq/coq_nvim',
 	-- 	branch = 'coq' }
 	-- use { 'ms-jpq/coq.artifacts',
 	-- 	branch = 'artifacts' }
 	-- use { 'ms-jpq/coq.thirdparty',
 	-- 	branch = '3p' }
 	{"windwp/nvim-autopairs"},

 }
