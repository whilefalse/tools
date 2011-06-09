set hlsearch              "Highlight searches
set incsearch             "Incremental search
set ls=2                  "Always show status line in all windows
set autoindent            "Auto indent on new line
set expandtab             "tabs to spaces
set tabstop=2             "Tabs are 2 spaces in width
set shiftwidth=2          "Autodindent to 2 spaces width
set scrolloff=999         "cursor is always in middle of screen
set ruler                 "Shows current file position
set cursorcolumn          "Highlight current column
set cursorline            "Highlight current row
set novisualbell          "Don't shake the screen
set number                "show line numbers
set title                 "Change title of window based on file
set ttyfast               "Smoother display for fast terminals
set hidden                "Don't close buffers when changing files
set wildchar=<Tab>        "Tab expands wildcards
set fileencoding=utf8     "Unicode man
set nocompatible          "Get all of vim's awesomeness
set backspace=indent,eol,start "Allow backspacing over tabs end of lines and start of insert

syntax on                 "syntax highlighting
set background=dark       "Tell vim I'm using a dark background
:colorscheme vividchalk   "This is recommended by rails.vim

let mapleader = ","       "Leader from \ to , - means stuff like Command-T plugin becomes ,+t rather than \+t
set backupdir=~/.vim/tmp  "Store backups in same dir
set directory=~/.vim/tmp  "Store swps in same dir

filetype plugin indent on "Detect filetype indentations
"Custom filetypes
au BufNewFile,BufRead *.ctp set filetype=html

"Tabs and traling space highlighting and sorting out - :retab sorts out tabs
set list lcs=tab:·⁖,trail:¶
autocmd BufWritePre * :%s/\s\+$//e

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
