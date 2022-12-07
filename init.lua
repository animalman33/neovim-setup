-- install packer if it is the first startup
local first_startup = false

local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
	first_startup = true
end

if first_startup then
	require("plugins")
	vim.cmd [[ PackerSync ]]
	require("impatient")
else
	require("impatient")
	require("plugins")
end

-- vim.wo.number = true
vim.opt.termguicolors = true
vim.wo.relativenumber = true

-- colorscheme
-- vim.g.tokyonight_style = "night"
-- vim.cmd [[colorscheme tokyonight]]

-- require('nightfox').compile() -- lua api version
vim.cmd("colorscheme duskfox")

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


-- treesitter
require("nvim-treesitter.configs").setup {
	auto_install = true,
	highlight = {
		enable = true
	},
	indent = {
		enable = true,
	}
}
-- vim.opt.foldmethod = 'expr'
-- vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
-- vim.opt.foldlevel = 3

-- completion
require("completion")
require("mason_conf")

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
vim.api.nvim_set_keymap('n', '<leader>fw', "<cmd>lua require('telescope.builtin').live_grep()<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>pp', "<cmd>Telescope projects<cr>", {})
require('telescope').load_extension('fzf')
require('telescope').load_extension('projects')

-- mini.nvim
require("mini")

-- project.nvim
require("project_nvim").setup {
	update_cwd = true,
	respect_buf_cwd = true,
	update_focused_file = {
		enable = true,
		update_cwd = true
	}
}


-- no more virtual_text
vim.diagnostic.config({
	virtual_text = false,
	underline = true,
	signs = true
})

-- make text stop shifting
vim.wo.signcolumn = "yes"

-- set update time to 1 second (shows auto pop up after 1 second and writes to swap file every second)
-- vim.o.updatetime = 1000
vim.cmd [[let g:cursorhold_updatetime = 1000]]

-- show error/warning on hover
vim.api.nvim_create_autocmd("CursorHold", {
	pattern = "*",
	command = "lua vim.diagnostic.open_float(nil, {focus=false})"
})

vim.api.nvim_create_autocmd("CursorHoldI", {
	pattern = "*",
	command = "lua vim.diagnostic.open_float(nil, {focus=false})"
})



--which key

require("which-key").setup({
	-- your configuration comes here
	-- or leave it empty to use the default settings
	-- refer to the configuration section below
})

-- toggle term

require("toggleterm").setup()

vim.api.nvim_set_keymap('t', '<Esc>', "<C-\\><C-n>", {})

vim.api.nvim_set_keymap('n', '<leader>tt', ":ToggleTerm<cr>", {})
require('leap').set_default_keymaps()
require("dash")

-- neogit
require("neogit").setup({
	integrations = { diffview = true },
})
require("diffview").setup({})


local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', '<leader>ng', '<cmd>lua require("neogit").open()<cr>', opts)


require("autopairs")

