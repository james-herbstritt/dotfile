" sets standard defaults that are used when no .vimrc is found
source $VIMRUNTIME/defaults.vim
filetype plugin indent on   "indents based on filetype and enables ftplugin folder

" ==========Search==========
set ignorecase   "ignore case when searching
set smartcase    "do not ignore if capital letter is typed
set hlsearch	 "highlight searches
set incsearch    "find the next match as search is typed

" ==========Color Scheme==========

colo evening      "set color scheme
set termguicolors "set 256 bit color
 

" ==========General Configuration==========

" Indentation
set tabstop=4               "sets default tab len to 4
set softtabstop=4           "allows backspace to delete tab converted to spaces
set expandtab               "converts tab to spaces
set autoindent		        "always set autoindenting on
set textwidth=80            "sets linewidth to 80
set wrap                    "wraps lines
set linebreak               "doesnt split words when wrapping

" Line Numbers and Highlighting
syntax on	             "syntax highlighing is on
set cursorline           "sets cursorline on
hi CursorLine term=underline cterm=NONE gui=NONE ctermbg=blue
set number               "sets line numbers
set showmatch            "sets highlighting for matching parens or brackets

" Miscellaneous
set showmode        "sets showing the mode at bottom
set autoread        "reload files changed outside of vim

" ==========File Management==========

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

" ==========Plugins==========

call plug#begin('~/.vim/plugged')
    Plug 'junegunn/fzf', { 'dir': '~/.fzf','do': './install --all'}
    Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'airblade/vim-gitgutter'
    Plug 'ervandew/supertab'
    Plug 'valloric/YouCompleteMe'
    Plug 'dense-analysis/ale'
    Plug 'townk/vim-autoclose'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'chrisbra/csv.vim'
    Plug 'sheerun/vim-polyglot'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
call plug#end()

let g:lightline = {
      \ 'colorscheme': 'one',
      \ }
set laststatus=2
set noshowmode

map <C-n> :NERDTreeToggle<CR>
map <C-f> :FZF<CR>

let g:airline_theme='ayu_dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion= ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<C-n>"
let g:UltiSnipsJumpBackwardTrigger="<C-p>"
