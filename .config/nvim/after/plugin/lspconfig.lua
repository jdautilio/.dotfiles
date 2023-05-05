local ok_lspconfig, lspconfig = pcall(require, 'lspconfig')
local ok_cmp_nvim_lsp, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
local ok_mason, mason = pcall(require, 'mason')
local ok_mason_lspconfig, mason_lspconfig = pcall(require, 'mason-lspconfig')
if not (ok_lspconfig and ok_cmp_nvim_lsp and ok_mason and ok_mason_lspconfig) then return end

mason.setup()
mason_lspconfig.setup()

local capabilities = cmp_nvim_lsp.default_capabilities()

local emmet_capabilities = vim.lsp.protocol.make_client_capabilities()
emmet_capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(_, bufnr)
  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', function()
    vim.lsp.buf.format({ async = true })
  end, bufopts)
end

lspconfig.lua_ls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.texlab.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.emmet_ls.setup({
  on_attach = on_attach,
  capabilities = emmet_capabilities,
})

lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.ccls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.hls.setup({ -- Haskell Language Server
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { 'haskell', 'lhaskell', 'cabal' },
})

lspconfig.rust_analyzer.setup({ -- Rust Language Server
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.bashls.setup({ -- Bash Language Server
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.ruby_ls.setup({ -- Ruby Language Server
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.pylsp.setup({ -- Python Language Server
  on_attach = on_attach,
  capabilities = capabilities,
})
