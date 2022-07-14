local dap_python = require('dap-python')
local dap = require('dap')
local dapui = require("dapui")
dapui.setup()
dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end


dap_python.setup('/home/animal/.virtualenvs/debugpy/bin/python')
dap_python.test_runner = 'pytest'

vim.api.nvim_set_keymap('n', '<leader>dc', '<cmd>lua require"dap".continue()<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>so', '<cmd>lua require"dap".step_over()<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>si', '<cmd>lua require"dap".set_into()<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>sot', '<cmd>lua require"dap".step_out()<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>bp', '<cmd>lua require"dap".toggle_breakpoint()<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>ro', '<cmd>lua require"dap".repl.open()<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>rl', '<cmd>lua require"dap".run_last()<cr>', {})
