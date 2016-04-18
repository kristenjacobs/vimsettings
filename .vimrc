execute pathogen#infect()

syntax on
filetype plugin indent on
set nocompatible
set nobackup
set hlsearch
set tabstop=4
set shiftwidth=4
set expandtab
set incsearch
set backspace=eol,start
set nowrap
set number
set guioptions+=b
set showmode
set nomore
set cursorline

" Shifts backwards and forward 
" through the open buffers...
map <C-S-right> :bn<CR>
map <C-S-left>  :bp<CR>
map <C-S-up>    :b#<CR>

" Use c syntax for asm/xc files..
au BufRead,BufNewFile *.xc set filetype=xc 

" Status line configuration.
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [POS=%04l,%04v][%p%%]
set laststatus=2

" Color scheme.
set background=dark
colorscheme gruvbox

" GUI specific stuff 
if has("gui_running") 
    set directory=/tmp
    set lines=40 columns=100
    set guifont=Monospace\ 9
endif

" Set tab completion to match bash
set wildmode=longest,list

" Enables the listing of open buffers (via airline plugin).
let g:airline#extensions#tabline#enabled = 1
