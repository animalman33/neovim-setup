return {
	"folke/lazy.nvim",
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
		config = function() require("highlight") end,
		event = "VeryLazy"
	},
	"neovim/nvim-lspconfig",
	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
		config = function()
			require("lualine").setup({
				options = {
					theme = "auto",
				},
			})
		end,
		dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
	},
	{ "EdenEast/nightfox.nvim", lazy = true },
	{
		"folke/trouble.nvim",
		keys = { { '<leader>tr', "<cmd>TroubleToggle<cr>", desc = "Trouble" } },
		dependencies = "nvim-tree/nvim-web-devicons",
		cmd = { 'TroubleToggle' },
		config = function()
			require("trouble").setup({})
		end,
	},
	("nvim-lua/plenary.nvim"),
	{
		'nvim-telescope/telescope.nvim',
		keys = { { '<leader>ff', ':Telescope file_browser<CR>',                              desc = "Find Files" },
			{ '<leader>fw',  "<cmd>lua require('telescope.builtin').live_grep()<cr>",            desc = "Find Word" },
			{ '<leader>fb',  "<cmd>lua require('telescope.builtin').buffers()<cr>",              desc = "Find Buffer" },
			{ '<leader>fh',  "<cmd>lua require('telescope.builtin').help_tags()<cr>",            desc = "Find help tags" },
			{ '<leader>pp',  "<cmd>Telescope projects<cr>",                                      desc = "Find Project" },
			{ 'gr',          "<cmd>lua require('telescope.builtin').lsp_references()<cr>",       desc = "Lsp refrence" },
			{ 'gi',          "<cmd>lua require('telescope.builtin').lsp_implementations()<cr>",  desc = "Lsp implementation" },
			{ 'gd',          "<cmd>lua require('telescope.builtin').lsp_definitions()<cr>",      desc = "Lsp definition" },
			{ '<leader>D',   "<cmd>lua require('telescope.builtin').lsp_type_definitions()<cr>", desc = "Lsp type definition" },
			{ '<leader>fkb', "<cmd>lua require('telescope.builtin').keymaps()<cr>",              desc = "Find Keymap" },
		},
		config = function()
			require('fuzzy')
		end,
		dependencies = { { 'nvim-lua/plenary.nvim' } }
	},
	("lukas-reineke/indent-blankline.nvim"),
	({
		"folke/which-key.nvim",
		event = "VeryLazy",
		config = function()
			require("which-key").setup({})
		end
	}),
	{ "rcarriga/nvim-notify",
		event = "VeryLazy",
		config = function()
			vim.notify = require("notify")
		end
	},
	("jose-elias-alvarez/null-ls.nvim"),
	({ "TimUntersberger/neogit",
		keys = { { '<leader>ng', '<cmd>lua require("neogit").open()<cr>', desc = "neogit open" } },
		config = function()
			require("neogit").setup({
				integrations = { diffview = true },
			})
		end,
		cmd = "Neogit",
		dependencies = "nvim-lua/plenary.nvim" }),

	({
		"sindrets/diffview.nvim",
		keys = { { '<leader>ng', '<cmd>lua require("neogit").open()<cr>', desc = "neogit open" } },
		cmd = "Neogit",
		config = function()
			require("diffview").setup({})
		end,
		dependencies = "nvim-lua/plenary.nvim",
	}),
	"lewis6991/impatient.nvim",
	{ "mfussenegger/nvim-dap",
		lazy = true,
		keys = {
			{ '<leader>dc',  '<cmd>lua require"dap".continue()<cr>',                        desc = "Start or Continue Debug" },
			{ '<leader>so',  '<cmd>lua require"dap".step_over()<cr>',                       desc = "Dap step over" },
			{ '<leader>si',  '<cmd>lua require"dap".set_into()<cr>',                        desc = "Dap step into" },
			{ '<leader>sot', '<cmd>lua require"dap".step_out()<cr>',                        desc = "Dap step out" },
			{ '<leader>bp',  '<cmd>lua require"dap".toggle_breakpoint()<cr>',               desc = "Toggle breakpoint" },
			{ '<leader>ro',  '<cmd>lua require"dap".repl.open()<cr>',                       desc = "Dap open repl" },
			{ '<leader>rl',  '<cmd>lua require"dap".run_last()<cr>',                        desc = "Dap run last" },
			{ '<leader>dt',  '<cmd>lua require("neotest").run.run({strategy = "dap"})<cr>', desc = "Debug test" } },
		config = function()
			require("dapconf")
		end,
		dependencies = { "rcarriga/nvim-dap-ui", "mfussenegger/nvim-dap" }
	},
	{ "jay-babu/mason-nvim-dap.nvim",
		lazy = true,

		config = function()
			require("mason_dap")
		end,
	},
	{ "rcarriga/nvim-dap-ui",   lazy = true },
	{ "mfussenegger/nvim-dap-python", lazy = true, dependencies = { "mfussenegger/nvim-dap" }
	},
	'ray-x/lsp_signature.nvim',
	{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make', dependencies = 'nvim-telescope/telescope.nvim', lazy = true },
	{ 'echasnovski/mini.nvim', branch = 'stable',
		event = "VeryLazy",
		config = function()
			require("mini")
		end },
	{ "ahmedkhalf/project.nvim",
		event = "VeryLazy",
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
	},
	'ggandor/leap.nvim',
	{ 'tpope/vim-repeat',                         lazy = true },
	{ "akinsho/toggleterm.nvim", version = 'v2.*',
		keys =
		{ { '<leader>tt', ":ToggleTerm<cr>", desc = "Toggle Terminal" } },
		config = function()
			require("toggleterm").setup()
		end,
		cmd = { "ToggleTerm" } },
	{ 'glepnir/dashboard-nvim',
		event = "VimEnter",
		config = function()
			require('dash')
		end,
		dependencies = { { 'nvim-tree/nvim-web-devicons' } } },
	{ "williamboman/mason.nvim",
		config = function()
			require("mason_conf")
		end
	},
	{ 'simrat39/rust-tools.nvim',
		lazy = true,
		config = function()
			require("rust")
		end,
		dependencies = { { "williamboman/mason.nvim" } },
		ft = "rust"
	},
	{ "williamboman/mason-lspconfig.nvim",
		dependencies = { { "williamboman/mason.nvim" } },
		config = function()
			require("mason_lsp")
		end
	},
	{ 'hrsh7th/cmp-nvim-lsp',
		lazy = true },
	{ 'hrsh7th/cmp-buffer',  lazy = true },
	{ 'hrsh7th/cmp-path',    lazy = true },
	{ 'hrsh7th/cmp-cmdline', lazy = true },
	{ 'hrsh7th/nvim-cmp',
		dependencies = { 'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',
			'rafamadriz/friendly-snippets' },
		event = "InsertEnter",
		config = function()
			require("completion")
		end
	},
	{ 'L3MON4D3/LuaSnip',             lazy = true },
	{ 'saadparwaiz1/cmp_luasnip',     lazy = true },
	{ 'rafamadriz/friendly-snippets', lazy = true },
	{ "windwp/nvim-autopairs", event = "VeryLazy",
		config = function()
			require("autopairs")
		end },
	{ 'nvim-neotest/neotest',
		keys = {
			{ '<leader>tc', '<cmd>lua require("neotest").run.run()<CR>',                   desc = "Run test under cursor" },
			{ '<leader>tf', '<cmd>lua require("neotest").run.run(vim.fn.expand("%"))<CR>', desc = "Run current test file" },
			{ '<leader>st', '<cmd>lua require("neotest").run.stop()<CR>',                  desc = "stops current test from running" },
			{ '<leader>dt', '<cmd>lua require("neotest").run.run({strategy = "dap"})<cr>', desc = "Debug test" }
		},
		config = function()
			require("test")
		end,
		dependencies = { 'nvim-lua/plenary.nvim', 'nvim-treesitter/nvim-treesitter', }
	},
	{ "folke/neodev.nvim",                          lazy = true },
	{ "nvim-neotest/neotest-python",
		lazy = true,
		dependencies = { 'nvim-neotest/neotest' },
	},
	{ "nvim-neotest/neotest-plenary",
		lazy = true,
		dependencies = { 'nvim-lua/plenary.nvim', 'nvim-treesitter/nvim-treesitter', 'nvim-neotest/neotest' },
	},
	{ "nvim-neotest/neotest-vim-test",
		lazy = true,
		dependencies = { 'nvim-neotest/neotest' },
	},
	{
		"nvim-neorg/neorg",
		cmd = "Neorg",
		ft = "norg",
		build = ":Neorg sync-parsers",
		opts = {
			load = {
				["core.defaults"] = {}, -- Loads default behaviour
				["core.norg.concealer"] = {}, -- Adds pretty icons to your documents
				["core.norg.dirman"] = { -- Manages Neorg workspaces
					config = {
						workspaces = {
							notes = "~/notes",
						},
					},
				},
			},
		},
		dependencies = { { "nvim-lua/plenary.nvim" } },
	},
	{ 'nvim-telescope/telescope-ui-select.nvim',    lazy = true },
	{ 'nvim-telescope/telescope-file-browser.nvim', lazy = true },
}
