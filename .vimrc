execute pathogen#infect()

syntax on
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

" Shifts backwards and forward 
" through the open buffers...
map <C-right> :bn<CR>
map <C-left>  :bp<CR>
map <C-up>    :b#<CR>

" Shifts backwards and forwards 
" through the open tabs...
map <C-Tab>   :tabn<CR>
map <C-S-Tab> :tabp<CR>

" Some mappings for the function keys
map <F2> :NERDTreeToggle<CR>                " Toggles the opening of the nerd tree
map <F3> :TlistToggle<CR>                   " Toggles the opening of the tag list window
map <F4> :b#<CR>                            " Switches to the alternative buffer
map <F5> :make<CR>                          " Runs the make command

" Use c syntax for asm/xc files..
au BufRead,BufNewFile *.xc set filetype=xc 

" Cd to the directory of the current buffer.
com CdBuf :cd %:p:h

" Status line configuration.
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [POS=%04l,%04v][%p%%]
set laststatus=2

" Version 7.0 specific stuff.
if version >= 700
  set cursorline
endif

" Color scheme.
if has("gui_running") 
  colo jurrasic
else
  set bg=dark
endif

" Platform specific stuff 
if has("gui_running") 
  if has("win32")
    set directory=C:\Temp\vim
    set guifont=Courier\ New
    set lines=50 columns=120
  else
    set directory=/tmp
    "set guifont=Courier\ 10\ Pitch\ 12
    set lines=40 columns=100
  endif
endif

" Allow us to replace some highlighted text with the contents of the 
" buffer without overwriting the current buffer contents
vmap m "_dP

" Fixes an issue with the Nerd Tree.
let g:NERDTreeDirArrows=0
