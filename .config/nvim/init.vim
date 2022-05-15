source ~/.vimrc
set nowrap nohls
set updatetime=100
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFocus<CR>

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-syntastic/syntastic'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-ruby/vim-ruby'
Plug 'neovimhaskell/haskell-vim'
Plug 'tpope/vim-sensible'
Plug 'lervag/vimtex'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'

call plug#end()
