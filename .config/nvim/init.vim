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

set mouse=a

syntax enable
filetype plugin indent on

" Keep cursor centered vertically
set scrolloff=8

" Remaps
nnoremap Y y$

" Run FZF :Files on Ctrl+F
nnoremap <silent> <C-f> :Files<CR>

" Exit insert mode with jj
inoremap jj <ESC>

" Save on Ctrl+S
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR><ESC>

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

" Move lines up-down with Alt+j/k
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Plugins
call plug#begin()
  Plug 'morhetz/gruvbox'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " Plug 'preservim/nerdtree'
  " Plug 'tpope/vim-fugitive'  
  Plug 'rust-lang/rust.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"

let g:rustfmt_autosave = 1
