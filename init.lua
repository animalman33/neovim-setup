require("impatient")
-- vim.wo.number = true
vim.opt.termguicolors = true
vim.wo.relativenumber = true
require("plugins")
-- require("github-theme").setup({
-- 	theme_style = "dark_default",
-- })
-- colorscheme
-- vim.g.tokyonight_style = "night"
-- vim.cmd[[colorscheme tokyonight]]
local nightfox = require('nightfox')
nightfox.compile()
vim.cmd("colorscheme duskfox")

vim.notify = require("notify")
require("lualine").setup({
	options = {
		theme = "auto",
	},
})

vim.cmd([[set completeopt=menuone,noinsert,noselect]])
vim.o.shortmess = vim.o.shortmess .. "c"
--vim.cmd([[set shortmess+=c]])

-- require("nvim-tree").setup({})
-- 
-- require("nvim-treesitter.configs").setup({
-- 	ensure_installed = "all",
-- 	ignore_install = {}, -- List of parsers to ignore installing
-- 	highlight = {
-- 		enable = true, -- false will disable the whole extension
-- 		disable = {}, -- list of language that will be disabled
-- 	},
-- })

-- vim.opt.foldmethod = 'expr'
-- vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'

-- completion
require("completion")

-- indent lines
require("indent_blankline").setup({
	-- for example, context is off by default, use this to turn it on
	show_current_context = true,
	show_current_context_start = true,
})
-- scrollbar
require("scrollbar").setup({})

--null ls
require("nullls")
-- markdown
-- require("markdown")

-- trouble
-- require("trouble").setup({
-- })
-- vim.api.nvim_set_keymap('n', '<space>tr', "<cmd>TroubleToggle<cr>", {})

--tabline
-- require("bufferline").setup({})

--neogit
require("neogit").setup({
	integrations = { diffview = true },
})
require("diffview").setup({})

-- debug
require("dapconf")

-- hop
vim.api.nvim_set_keymap('n', '<space>s', "<cmd>HopChar1<CR>", {})

-- telescope
vim.api.nvim_set_keymap('n', '<space>ff', "<cmd>lua require('telescope.builtin').find_files()<CR>", {})
vim.api.nvim_set_keymap('n', '<space>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>", {})
vim.api.nvim_set_keymap('n', '<space>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>", {})
vim.api.nvim_set_keymap('n', '<space>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>", {})
require('telescope').load_extension('fzf')


-- comment
require("Comment").setup()

-- no more virtual_text
vim.diagnostic.config({
	virtual_text = false,
	underline = true,
	signs = true
})

-- make text stop shifting
vim.wo.signcolumn = "yes"

-- set update time to 1 second (shows auto pop up after 1 second and writes to swap file every second)
vim.o.updatetime = 1000

-- show error/warning on hover
vim.api.nvim_create_autocmd("CursorHold", {
	pattern = "*",
	command = "lua vim.diagnostic.open_float(nil, {focus=false})"
})

vim.api.nvim_create_autocmd("CursorHoldI", {
	pattern = "*",
	command = "lua vim.diagnostic.open_float(nil, {focus=false})"
})

