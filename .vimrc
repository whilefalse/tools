set hlsearch
set incsearch
set ls=2
set tabstop=2
set shiftwidth=2
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
syntax on
set background=dark
:colorscheme vividchalk

set fileencoding=utf8
set nocompatible
filetype plugin indent on
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
"nmap <tab> v>
"nmap <s-tab> v<
"vmap <tab> >gv
"vmap <s-tab> <gv

"Auto add closing } when one is opened
"inoremap {      {}<Left>
"inoremap {<CR>  {<CR>}<Esc>O
"inoremap {{     {
"inoremap {}     {}

"Tabs and traling space highlighting and sorting out - :retab sorts out tabs
set list lcs=tab:·⁖,trail:¶
autocmd BufWritePre * :%s/\s\+$//e
