require'lspconfig'.clangd.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.jedi_language_server.setup{
	on_attach=require'completion'.on_attach
}


