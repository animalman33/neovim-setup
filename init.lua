vim.wo.number = true
vim.cmd[[set termguicolors]]
require('plugins')
require('github-theme').setup({
	theme_style="dark_default"
})
vim.notify = require("notify")
require('lualine').setup{
	options = {
		theme = "auto"
	}
}

vim.cmd[[set completeopt=menuone,noinsert,noselect]]
vim.cmd[[set shortmess+=c]]

require'nvim-tree'.setup { 
	open_on_setup=true,
	diagnostics={enabled=true},
}

require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = {}, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = {},  -- list of language that will be disabled
  },
}

-- completion
require('completion')

-- indent lines
require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
}
-- scrollbar
require("scrollbar").setup({})
