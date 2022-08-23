require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "clangd", "cmake", 'cssls', 'dockerls', 'gopls', 'sumneko_lua', 'pyright', 'rust_analyzer' }
})

local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

require("mason-lspconfig").setup_handlers {
	-- The first entry (without a key) will be the default handler
	-- and will be called for each installed server that doesn't have
	-- a dedicated handler.
	function(server_name) -- default handler (optional)
		require("lspconfig")[server_name].setup {
			capabilities = capabilities,

			require("lsp_signature").on_attach()
		}
	end,
	-- Next, you can provide targeted overrides for specific servers.
	-- For example, a handler override for the `rust_analyzer`:
	["rust_analyzer"] = function()
		require("rust-tools").setup {
			capabilities = capabilities,

			require("lsp_signature").on_attach()
		}
	end
}
