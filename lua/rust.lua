local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("rust-tools").setup {
    capabilities = capabilities,

    require("lsp_signature").on_attach()
}


