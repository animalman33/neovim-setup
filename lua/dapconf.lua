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
