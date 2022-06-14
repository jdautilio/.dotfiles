set ts=4 sw=4 noexpandtab
set nu rnu
set nowrap nohls
set updatetime=100
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFocus<CR>

call plug#begin()

Plug '907th/vim-auto-save'
Plug 'alvan/vim-closetag'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-ruby/vim-ruby'
Plug 'neovimhaskell/haskell-vim'
Plug 'lervag/vimtex'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'

call plug#end()

let g:ctrlp_map = '<c-p>'
let g:auto_save = 1
