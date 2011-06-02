set hlsearch
set incsearch
set ls=2
set tabstop=4
set shiftwidth=4
set scrolloff=3
set ruler
set novisualbell
set number
set title
set ttyfast
set autoindent 
set expandtab "tabs to spaces
set hidden
set wildchar=<Tab>
set showmatch
:colorscheme relaxedgreen

set fileencoding=utf8
filetype plugin on
filetype indent on
filetype on

set nocompatible
set backspace=indent,eol,start

"disable arrows
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <PageUP> <NOP>
noremap <PageDown> <NOP>


"make tab key more better
map <tab> v>
nmap <s-tab> v<
vmap <tab> >gv
vmap <s-tab> <gv

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
