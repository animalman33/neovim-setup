-- treesitter
require("nvim-treesitter.configs").setup {
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = { 'org' },
	},
	-- indent = {
	-- 	enable = true,
	-- }
}

-- vim.opt.foldmethod = 'expr'
-- vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
-- vim.opt.foldlevel = 3

-- indent lines
require("indent_blankline").setup({
	-- for example, context is off by default, use this to turn it on
	show_current_context = true,
	show_current_context_start = true,
})
