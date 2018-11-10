"Default Settings
set number "line num
set ai "auto indent
set si "smart indent
set autowrite
set autoread
set ts=4 "Tab to 4 space
set expandtab "Tab to space
set ignorecase "Ignore case when search
set hlsearch "highlight search word
set fileencodings=utf-8 "Always UTF-8
set encoding=utf-8
set tenc=utf-8 "Always UTF-8
set ruler "show cursor location
set title "show title
set showmatch "show mathching brackets
set wmnu "show possible list when tab1
set wrap
set visualbell "show visual bell instead
set scrolloff=2 "Show at least two lines below the cursor
set incsearch "Incremental Search On
syntax on "syntax highlight on
set nobackup "no backup
set laststatus=2 "Always show status bar
set guioptions-=r  "remove right-hand scroll bar

" Remap HJKL
noremap ; l
noremap l k
noremap k j
noremap j h

" Vim Plug - plugin manager
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'jreybert/vimagit'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/syntastic'
call plug#end()
                       

" Color & Font change
set termguicolors " enable true colors support
let g:airline_powerline_fonts = 1

if has('gui_running')
  set guifont=Roboto\ Mono\ for\ Powerline:h13
endif

syntax on
colorscheme onedark
let g:airline_theme='onedark'


