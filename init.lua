-- setup lazy nvim package manager if not already done
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
	    "git",
	    "clone",
	    "--filter=blob:none",
	    "https://github.com/folke/lazy.nvim.git",
	    "--branch=stable", -- latest stable release
	    lazypath,
	})
end
--
-- set leader key needs to be done before loading plugins
vim.g.mapleader = " "

-- other lazy stuff
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")

-- improve startup time
require("impatient")

-- vim.wo.number = true
vim.opt.termguicolors = true
vim.wo.relativenumber = true
vim.wo.number = true

-- vim.cmd("colorscheme duskfox")

--vim.cmd([[set completeopt=menuone,noinsert,noselect]])
--vim.o.completeopt = "menuone,noinsert,noselect"
vim.o.shortmess = vim.o.shortmess .. "c"

-- lsp/mason installer
require("mason_conf")

--null ls
require("nullls")

-- no more virtual_text
vim.diagnostic.config({
    -- virtual_text = false,
    underline = true,
    signs = true,
    -- update_in_insert = true,
    severity_sort = true
})

-- make text stop shifting
vim.wo.signcolumn = "yes"

-- set update time to 1 second (shows auto pop up after 1 second and writes to swap file every second)
vim.o.updatetime = 1000
vim.api.nvim_set_option("clipboard","unnamedplus")

-- show error/warning on hover
-- vim.api.nvim_create_autocmd("CursorHold", {
--     pattern = "*",
--     command = "lua vim.diagnostic.open_float(nil, {focus=false})"
-- })
--
-- vim.api.nvim_create_autocmd("CursorHoldI", {
--     pattern = "*",
--     command = "lua vim.diagnostic.open_float(nil, {focus=false})"
-- })
-- jump around
-- keybindings
require("keybinds")
