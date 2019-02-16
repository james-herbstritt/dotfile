" sets standard defaults that are used when no .vimrc is found
source $VIMRUNTIME/defaults.vim

" ==========Search==========
set ignorecase   "ignore case when searching
set smartcase    "do not ignore if capital letter is typed
set hlsearch	 "highlight searches
set incsearch    "find the next match as search is typed

" ==========Color Scheme==========

colo PapayaWhip   "set color scheme
set termguicolors "set 256 bit color
 

" ==========General Configuration==========

" Indentation
set tabstop=4               "sets default tab len to 4
set softtabstop=4           "allows backspace to delete tab converted to spaces
set expandtab               "converts tab to spaces
set autoindent		        "always set autoindenting on
filetype plugin indent on   "indents based on filetype
set textwidth=80            "sets linewidth to 80
set wrap                    "wraps lines
set linebreak               "doesnt split words when wrapping
nnoremap <Tab> 0i<Tab><Esc>

" Line Numbers and Highlighting
syntax on	             "syntax highlighing is on
set cursorline           "sets cursorline on
hi CursorLine term=underline cterm=NONE gui=NONE ctermbg=blue
set number               "sets line numbers
set showmatch            "sets highlighting for matching parens or brackets

" Miscellaneous
set showmode        "sets showing the mode at bottom
set autoread        "reload files changed outside of vim

" ==========-File Management==========

" keeps undo historty in files
if has('persistent_undo')
	set undofile
endif

" sets a backup file and directory for that backup
set backup
set backupdir=~/.vim/vimtmp//
" sets directory for undo files
set undodir=~/vim/vimtmp//
" sets directory for swp files
set directory=~/.vim/vimtmp//

" ==========Scrolling==========

set scrolloff=8      "start scrolling when 8 lines from margin
set sidescrolloff=15 "start scrolling when 15 lines from margin
set sidescroll=1     "set num of chars that sidescroll scrolls by
