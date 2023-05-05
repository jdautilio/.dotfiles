local ok, telescope = pcall(require, 'telescope')
if not ok then
  return
end

telescope.setup({
  defaults = {
    file_ignore_patterns = {'node_modules', 'env', 'venv'},
  }
})

telescope.load_extension('fzf')

local default_opts = { noremap = true, silent = true }
local builtin = require('telescope.builtin')

vim.keymap.set('n', 'ff', builtin.find_files, default_opts)
vim.keymap.set('n', 'fg', builtin.live_grep, default_opts)
vim.keymap.set('n', 'fb', builtin.buffers, default_opts)
vim.keymap.set('n', 'fh', builtin.help_tags, default_opts)
vim.keymap.set('n', 'fc', builtin.commands, default_opts)

vim.keymap.set('n', 'gb', builtin.git_branches, default_opts)
vim.keymap.set('n', 'gc', builtin.git_commits, default_opts)
vim.keymap.set('n', 'gs', builtin.git_status, default_opts)
