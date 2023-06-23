local opts = { noremap = true, silent = true }

-- random keybind for terminal
vim.api.nvim_set_keymap('t', '<Esc>', "<C-\\><C-n>", {})

local function set_bind(bind, cmd)
	vim.api.nvim_set_keymap('n', bind, cmd, opts)
end
-- lsp keybinds
set_bind('gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
-- set_bind('gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
set_bind('K', '<cmd>lua vim.lsp.buf.hover()<CR>')
-- set_bind('gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
set_bind('<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
set_bind('<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>')
set_bind('<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>')
set_bind('<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>')
-- set_bind('<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
set_bind('<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
set_bind('<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')
-- set_bind('gr', '<cmd>lua vim.lsp.buf.references()<CR>')
set_bind('<leader>lf', '<cmd>lua vim.lsp.buf.format{ async = true }<CR>')
set_bind('<leader>vd', '<cmd>lua vim.diagnostic.open_float(nil, {float=false})<cr>')
