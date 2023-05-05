vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use('wbthomason/packer.nvim')

  -- Github Copilot
  use('github/copilot.vim')

  -- Debugging
  use('mfussenegger/nvim-dap')
  use({ 'rcarriga/nvim-dap-ui', requires = { 'mfussenegger/nvim-dap' } })

  -- Color schemes
  use('ellisonleao/gruvbox.nvim')
  use('NLKNguyen/papercolor-theme')
  use({ "catppuccin/nvim", as = "catppuccin" })

  use({ 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' })

  use('folke/which-key.nvim')

  use({
    'nvim-tree/nvim-tree.lua',
    requires = { 'nvim-tree/nvim-web-devicons' },
    tag = 'nightly',
  })

  use({ 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } })

  -- LSP support
  use('williamboman/mason.nvim')
  use('williamboman/mason-lspconfig.nvim')
  use('neovim/nvim-lspconfig')

  -- Completion
  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-path')
  use('hrsh7th/cmp-cmdline')
  use('hrsh7th/nvim-cmp')
  use('L3MON4D3/LuaSnip')
  use('saadparwaiz1/cmp_luasnip')
  use('amarakon/nvim-cmp-lua-latex-symbols') -- For LaTeX symbols

  use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })

  -- -- Fuzzy finder
  use({
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'BurntSushi/ripgrep' },
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        run =
        'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build prefix build',
      },
      { 'nvim-tree/nvim-web-devicons' },
    },
  })

  use('onsails/lspkind.nvim')
  use({ 'kylechui/nvim-surround', tag = '*' })
  use('windwp/nvim-autopairs')
  use('jose-elias-alvarez/null-ls.nvim')
  use('lervag/vimtex')
  use('Pocco81/auto-save.nvim')
  -- use('ray-x/web-tools.nvim')
  use('numToStr/Comment.nvim')
end)
