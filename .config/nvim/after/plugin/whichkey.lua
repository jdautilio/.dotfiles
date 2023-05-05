local ok, whichkey = pcall(require, 'which-key')
if not ok then
  return
end

whichkey.setup({
  window = {
    border = 'single',   -- none, single, double, shadow
    position = 'bottom', -- bottom, top
  },
})

local mappings = {
  ['w'] = { '<cmd>update!<CR>', 'Save' },
  ['q'] = { '<cmd>q!<CR>', 'Quit' },
  b = {
    name = 'Buffer',
    c = { '<Cmd>bd!<Cr>', 'Close current buffer' },
    D = { '<Cmd>%bd|e#|bd#<Cr>', 'Delete all buffers' },
    d = { '<Cmd>bd<Cr>', 'Delete current buffer' },
    n = { '<Cmd>bnext<Cr>', 'Next buffer' },
    p = { '<Cmd>bprevious<Cr>', 'Previous buffer' },
    s = { '<Cmd>split<Cr>', 'Split' },
    v = { '<Cmd>vsplit<Cr>', 'Vsplit' },
  },
  f = {
    name = 'Telescope',
    b = { '<cmd>Telescope buffers<CR>', 'Buffers' },
    c = { '<cmd>Telescope commands<CR>', 'Commands' },
    f = { '<cmd>Telescope find_files<CR>', 'Find files' },
    h = { '<cmd>Telescope help_tags<CR>', 'Help tags' },
    w = { '<cmd>Telescope live_grep<CR>', 'Live grep' },
  },
  g = {
    name = 'Git',
    b = { '<cmd>Telescope git_branches<CR>', 'Checkout branch' },
    c = { '<cmd>Telescope git_commits<CR>', 'Checkout commit' },
    s = { '<cmd>Neogit<CR>', 'Status' },
  },
  z = {
    name = 'Packer',
    c = { '<cmd>PackerCompile<cr>', 'Compile' },
    i = { '<cmd>PackerInstall<cr>', 'Install' },
    s = { '<cmd>PackerSync<cr>', 'Sync' },
    S = { '<cmd>PackerStatus<cr>', 'Status' },
    u = { '<cmd>PackerUpdate<cr>', 'Update' },
  },
}

local opts = {
  mode = 'n',     -- Normal mode
  prefix = '<leader>',
  buffer = nil,   -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true,  -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = false, -- use `nowait` when creating keymaps
}

whichkey.register(mappings, opts)
