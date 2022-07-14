local first_startup = false
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  first_startup = true
end
if first_startup then
	require("plugins")
	require("impatient")
else
	require("impatient")
	require("plugins")
end

-- vim.wo.number = true
vim.opt.termguicolors = true
vim.wo.relativenumber = true
-- require("github-theme").setup({
-- 	theme_style = "dark_default",
-- })
-- colorscheme
vim.g.tokyonight_style = "night"
vim.cmd[[colorscheme tokyonight]]
-- local nightfox = require('nightfox')
-- nightfox.compile()
-- vim.cmd("colorscheme duskfox")

vim.notify = require("notify")
require("lualine").setup({
	options = {
		theme = "auto",
	},
})

-- set leader key
vim.g.mapleader = " "

vim.cmd([[set completeopt=menuone,noinsert,noselect]])
vim.o.shortmess = vim.o.shortmess .. "c"

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
-- vim.opt.foldlevel = 3
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
-- require("trouble").setup({})
vim.api.nvim_set_keymap('n', '<leader>tr', "<cmd>TroubleToggle<cr>", {})

-- debug
-- require("dapconf")

-- telescope
vim.api.nvim_set_keymap('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<CR>", {})
vim.api.nvim_set_keymap('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>pp', "<cmd>Telescope projects<cr>", {})
require('telescope').load_extension('fzf')
require('telescope').load_extension('projects')

-- mini.nvim
require("mini")

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
