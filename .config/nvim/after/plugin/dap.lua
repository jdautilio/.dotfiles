local dap_ok, dap = pcall(require, 'dap')
local python_ok, dap_python = pcall(require, 'dap-python')
local dapui_ok, dapui = pcall(require, 'dapui')
if not dap_ok or not python_ok or not dapui_ok then
  return
end

dap_python.setup('~/.virtualenvs/debugpy/bin/python')
dapui.setup()

local codelldb_root = vim.fn.stdpath('data') .. '/mason/packages/codelldb/extension/'
local codelldb_path = codelldb_root .. 'adapter/codelldb'
local liblldb_path = codelldb_root .. 'lldb/lib/liblldb.so'

dap.adapters.rust = require'rust-tools.dap'.get_codelldb_adapter(codelldb_path, liblldb_path)

vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint)
vim.keymap.set('n', '<leader>dc', dap.continue)
vim.keymap.set('n', '<leader>di', dap.step_into)
vim.keymap.set('n', '<leader>do', dap.step_out)
vim.keymap.set('n', '<leader>dn', dap.step_over)
vim.keymap.set('n', '<leader>dr', dap.restart)
vim.keymap.set('n', '<leader>de', dapui.eval)
vim.keymap.set('n', '<leader>dt', dapui.toggle)
