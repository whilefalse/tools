runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

set hlsearch              "Highlight searches
set incsearch             "Incremental search
set ls=2                  "Always show status line in all windows
set autoindent            "Auto indent on new line
set expandtab             "tabs to spaces
set tabstop=2             "Tabs are 2 spaces in width
set shiftwidth=2          "Autodindent to 2 spaces width
set scrolloff=10          "Start scrolling when 10 lines close to the bottom
set ruler                 "Shows current file position
set statusline=%<%f\ %h%m%y%r%=%-14.(%l,%c%V%)\ %P
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
set wildmode=longest,list "Better tab completion of filenames (like bash)
set wildmenu              "as above
"Allows use of %/ for current directory
cmap %/ %:p:h/

"256 coloras
set t_Co=256
set background=dark       "Tell vim I'm using a dark background
colorscheme solarized
syntax on                 "syntax highlighting

"indent guides
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 1
hi IndentGuidesEven ctermbg=black
hi IndentGuidesOdd ctermbg=grey

let mapleader = ","       "Leader from \ to , - means stuff like Command-T plugin becomes ,+t rather than \+t
set backupdir=~/.vim/tmp  "Store backups in same dir
set directory=~/.vim/tmp  "Store swps in same dir

filetype plugin indent on "Detect filetype indentations

"Tabs and traling space highlighting and sorting out - :retab sorts out tabs
set list lcs=tab:·⁖,trail:¶

"Emacs indenting
map <Tab> ==

"NERDTree toggle
map <c-T> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 30

"Easy file switching
nnoremap <leader>. <C-^>

"Two columns of same file, with second column continuing the first
"Like a newspaper article or something.
:noremap <silent> <Leader>vs :<C-u>let @z=&so<CR>:set so=0 noscb<CR>:bo vs<CR>Ljzt:setl scb<CR><C-w>p:setl scb<CR>:let &so=@z<CR>

"Ctrl-P fuzzy matching
let g:ctrlp_map = '<leader><leader>'
let g:ctrlp_working_path_mode = 0

"Copy and paste across vim sessions
:command! -range=% Snip '<,'>w! /tmp/snippet
:command! Unsnip r /tmp/snippet

"Shortcuts for qa! and wqa!
:command! Q qa!
:command! WQ wqa!

"autocmd BufWritePre * :%s/\s\+$//e

" Get yankring out of the way
let g:yankring_history_dir = '~/.vim/tmp'

set colorcolumn=80
