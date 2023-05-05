local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

-- Resizing panes
keymap('n', '<Left>', ':vertical resize +1<CR>', default_opts)
keymap('n', '<Right>', ':vertical resize -1<CR>', default_opts)
keymap('n', '<Up>', ':resize -1<CR>', default_opts)
keymap('n', '<Down>', ':resize +1<CR>', default_opts)

-- Toggle Nvim Tree
keymap('n', '<Leader>tt', ':NvimTreeToggle<CR>', default_opts)

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, default_opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, default_opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, default_opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, default_opts)
