local ok, nvimtree = pcall(require, 'nvim-tree')
if not ok then
  return
end

nvimtree.setup()

local default_opts = { noremap = true, silent = true }
local nvim_tree_api = require('nvim-tree.api')

-- Toggle Nvim Tree
vim.keymap.set('n', 'tt', nvim_tree_api.tree.toggle, default_opts)
