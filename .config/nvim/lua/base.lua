local api = vim.api
local g = vim.g
local opt = vim.opt

-- Remap leader and local leader to <Space>
api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
g.mapleader = ' '
g.maplocalleader = ' '

-- Indent options
opt.autoindent = true -- New lines inherit the indentation of previous lines
opt.expandtab = true
opt.shiftwidth = 2
opt.smarttab = true -- Insert tabstop number of spaces when pressing Tab
opt.tabstop = 2
opt.smartindent = true

-- Search options
opt.hlsearch = false -- Unset highlight on search
opt.ignorecase = true --Case insensitive searching unless /C or capital in search
opt.smartcase = true -- Switch to case-sensitive when query contains an uppercase letter

-- UI options
opt.ruler = true;
opt.cursorline = true; -- Highlight current line
opt.number = true -- Make line numbers default
opt.relativenumber = true -- Make relative number default
opt.errorbells = true -- Disable bell sound on errors
opt.visualbell = true -- Flash screen instead of beeping on errors
opt.mouse = 'a' --Enable mouse mode
opt.termguicolors = true -- Enable colors in terminal
opt.wrap = false
opt.scrolloff = 5 -- Add margin to top/bottom of the file
opt.colorcolumn = '120' -- Add a marker after n characters

-- Code folding options
opt.foldmethod = 'indent' -- Fold based on indentation levels
opt.foldnestmax = 3 -- Only fold up to n nested levels
opt.foldenable = false -- Disable folding by default

-- Miscellaneous options
opt.breakindent = true --Enable break indent
opt.undofile = true --Save undo history
opt.updatetime = 250 --Decrease update time
opt.signcolumn = 'yes' -- Always show sign column
-- opt.clipboard = "unnamedplus" -- Access system clipboard
opt.list = true


-- Highlight on yank
vim.cmd([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]])
