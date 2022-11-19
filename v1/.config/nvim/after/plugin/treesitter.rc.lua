local ts = require 'nvim-treesitter.configs'

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    'tsx', 'lua', 'json', 'css'
  },
  autotag = {
    enable = true,
  }
}
