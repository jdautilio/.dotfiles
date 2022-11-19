local keymap = vim.keymap

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Tabs
keymap.set('n', 'te', ':tabedit<Return>', {silent = true})
keymap.set('n', 'tc', ':tabc<Return>', {silent = true})
keymap.set('n', 'ss', ':split<Return><C-w>w', {silent = true})
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', {silent = true})

keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sk', '<C-w>k') -- Up
keymap.set('', 'sj', '<C-w>j') -- Down
keymap.set('', 'sh', '<C-w>h') -- Left
keymap.set('', 'sl', '<C-w>l') -- Right

keymap.set('n', '<C-w>k', '<C-w>+')
keymap.set('n', '<C-w>j', '<C-w>-')
keymap.set('n', '<C-w>h', '<C-w><')
keymap.set('n', '<C-w>l', '<C-w>>')

-- open Telescope
keymap.set('n', '<C-p>', ':Telescope find_files<Return>')
