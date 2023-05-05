local ok, Comment = pcall(require, "Comment")
if not ok then
  return
end

Comment.setup()

local api = require("Comment.api")

vim.keymap.set('n', '<C-/>', api.toggle.linewise.current)
vim.keymap.set('n', '<C-S-/>', api.toggle.blockwise.current)

local esc = vim.api.nvim_replace_termcodes(
    '<ESC>', true, false, true
)

vim.keymap.set('v', '<C-/>', function()
  vim.api.nvim_feedkeys(esc, 'nx', false)
  api.toggle.linewise(vim.fn.visualmode())
end)

vim.keymap.set('v', '<C-S-/>', function()
  vim.api.nvim_feedkeys(esc, 'nx', false)
  api.toggle.blockwise(vim.fn.visualmode())
end)
