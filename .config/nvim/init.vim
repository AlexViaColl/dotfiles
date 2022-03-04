set nocp

" Disable swap files
set noswapfile

" Indentation
set expandtab
set shiftwidth=4
set tabstop=4

" Line numbers
set number
set relativenumber

syntax enable
filetype plugin indent on

" Keep cursor centered vertically
set scrolloff=8

" Remaps
nnoremap Y y$

" Run FZF :Files on Ctrl+F
nnoremap <silent> <C-f> :Files<CR>

" Save on Ctrl+S
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

" Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Resize splits
nmap <C-h> :vertical resize -4<CR>
nmap <C-l> :vertical resize +4<CR>
nmap <C-k> :resize +4<CR>
nmap <C-j> :resize -4<CR>

" Plugins
call plug#begin()
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " Plug 'preservim/nerdtree'
  " Plug 'tpope/vim-fugitive'  
  Plug 'rust-lang/rust.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
call plug#end()

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"

let g:rustfmt_autosave = 1
