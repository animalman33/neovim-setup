require("impatient")
vim.wo.number = true
vim.cmd([[set termguicolors]])
require("plugins")
require("github-theme").setup({
	theme_style = "dark_default",
})
vim.notify = require("notify")
require("lualine").setup({
	options = {
		theme = "auto",
	},
})

vim.cmd([[set completeopt=menuone,noinsert,noselect]])
vim.o.shortmess = vim.o.shortmess .. "c"
--vim.cmd([[set shortmess+=c]])

require("nvim-tree").setup({
	diagnostics = { enabled = true },
})

require("nvim-treesitter.configs").setup({
	ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
	ignore_install = {}, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = {}, -- list of language that will be disabled
	},
})

vim.opt.foldmethod = 'expr'
vim.o.foldlevel=1
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'

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
require("trouble").setup({
	auto_open = true,
	auto_close = true,
})

--tabline
vim.opt.termguicolors = true
require("bufferline").setup({})

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
vim.api.nvim_set_keymap('n', '<space>tf', "<cmd>Telescope find_files<CR>", {})

-- comment
require("Comment").setup()
