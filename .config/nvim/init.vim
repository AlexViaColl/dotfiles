set nocp

" Indentation
set expandtab
set shiftwidth=4
set tabstop=4

" Line numbers
set number
set relativenumber

" nvim defaults
" set ruler
" set hlsearch
" set ignorecase
" set incsearch
" set background=dark
" filetype plugin indent on

syntax enable

" Remaps
nnoremap Y y$

" Plugins
call plug#begin()
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " Plug 'preservim/nerdtree'
  " Plug 'tpope/vim-fugitive'  
  " Plug 'rust-lang/rust.vim'
call plug#end()
