local null_ls = require("null-ls")

-- null-ls setup
null_ls.setup({
	-- add your sources / config options here
	sources = {
		require("null-ls").builtins.formatting.black,
		require("null-ls").builtins.formatting.gofmt,
		require("null-ls").builtins.formatting.prettier,
		null_ls.builtins.diagnostics.cspell.with({
			filetypes = {"md", "html", "markdown"}
		}),
		null_ls.builtins.code_actions.cspell.with({
			filetypes = {"md", "html", "markdown"}
		}),
		--require("null-ls").builtins.formatting.rustfmt,
		--require("null-ls").builtins.formatting.clang_format,
		--require("null-ls").builtins.formatting.stylua,
		-- require("null-ls").builtins.diagnostics.pylint
	},
})
