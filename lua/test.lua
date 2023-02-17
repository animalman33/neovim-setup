require("neotest").setup({
  adapters = {
    require("neotest-python")({
      dap = { justMyCode = false },
      runner = 'pytest'
    }),
    require("neotest-plenary"),
    require("neotest-vim-test")({
      ignore_file_types = { "python", "vim", "lua" },
    }),
  },
})
