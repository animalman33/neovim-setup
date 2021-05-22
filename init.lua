
vim.wo.number = true
vim.cmd[[set termguicolors]]
require('plugins')
require('bufferline').setup{}
require('langservers')
require('vimtree')
require('lualine').setup{
options = {
	theme = 'tokyonight'
	}
}
vim.cmd[[autocmd BufEnter * lua require'completion'.on_attach()]]
vim.cmd[[imap <tab> <Plug>(completion_smart_tab)]]
vim.cmd[[imap <tab> <Plug>(completion_smart_s_tab)]]
vim.cmd[[set completeopt=menuone,noinsert,noselect]]
vim.cmd[[set shortmess+=c]]

vim.cmd[[colorscheme tokyonight]]


vim.api.nvim_set_keymap('', '<C-n>', ':NvimTreeToggle<CR>', {})
vim.api.nvim_set_keymap('', '<leader>r', 'NvimTreeRefresh<CR>', {})
vim.api.nvim_set_keymap('', '<leader>n', ':NvimTreeFindFile<CR>', {})

vim.api.nvim_set_keymap('', '[b', ':BufferLineCycleNex<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('', 'b]', ':BufferLineCyclePrev<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('', 'bn', ':BufferLineMoveNext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('', 'bp', 'BufferLineMovePrev<CR>', {noremap = true, silent = true})

require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = {}, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = {},  -- list of language that will be disabled
  },
}



