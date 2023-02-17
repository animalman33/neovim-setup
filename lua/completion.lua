local cmp = require 'cmp'

local function select_next(fallback)
	if cmp.visible() then
		cmp.select_next_item()
	else
		fallback()
	end
end

local function select_prev(fallback)

	if cmp.visible() then
		cmp.select_prev_item()
	else
		fallback()
	end
end

cmp.setup({
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
			-- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
			require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
			-- require('snippy').expand_snippet(args.body) -- For `snippy` users.
			-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
		end,
	},
	window = {
		-- completion = cmp.config.window.bordered(),
		-- documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<TAB>'] = select_next,
		['<S-TAB>'] = select_prev,
		['<CR>'] = cmp.mapping.confirm({ select = true }),
		['<C-j>'] = select_next,
		['<C-k>'] = select_prev
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		-- { name = "cmdline" },
		-- { name = "path" },
		{ name = 'luasnip' },
		{ name = 'calc' }, --calculator
	}, {
		{ name = 'buffer' },
	})
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
	sources = cmp.config.sources({
		{ name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
	}, {
		{ name = 'buffer' },
	})
})

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on(
	'confirm_done',
	cmp_autopairs.on_confirm_done()
)

require("luasnip.loaders.from_vscode").lazy_load()

