"File Setting
set fileencodings=utf-8 "Always UTF-8
set encoding=utf-8
set tenc=utf-8 "Always UTF-8

set directory^=$HOME/.vim/tmp//

"Default setting
syntax on
set number "show line number
set ts=4 "set tab as 4 space
set softtabstop=4
set shiftwidth=4
set textwidth=80 "set wrap 80
set autoindent "indent when moving to the next line while coding
set expandtab "extend tab into space
set cursorline "show visual line under the cursor's current line 
set showmatch "show the matching brackets
set ignorecase "Ignore case when searching
"set hlsearch "highlight search word
set ruler "show cursor location
set title "show title
set visualbell "show visualbell instead
set guioptions=-r "remove right-hand scroll bar
set nobackup
set clipboard=unnamed "Allow system paste

set foldmethod=indent "Enable folding
set foldlevel=99
set backspace=indent,eol,start

" Remap HJKL
noremap ; l
noremap l k
noremap k j
noremap j h

"Folding with space
nnoremap <space> za
"split navigations
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 10
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

" Vim Plug - plugin manager
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jreybert/vimagit'
call plug#end()

" Color & Font change
set termguicolors " enable true colors support
let g:airline_powerline_fonts = 1

if has('gui_running')
  set guifont=Roboto\ Mono\ for\ Powerline:h15
endif

colorscheme obsidian
let g:airline_theme='murmur'
