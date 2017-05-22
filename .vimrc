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
set mouse=a
if $TMUX == ''
    set clipboard+=unnamed
endif

" Shifts backwards and forward 
" through the open buffers...
map <Tab>   :bn<CR>
map <S-Tab> :bp<CR>

" Use c syntax for asm/xc files..
au BufRead,BufNewFile *.xc set filetype=xc 

" Use clojure syntax for kp files..
au BufRead,BufNewFile *.kp set filetype=clojure 

" Enable folding on markers for password files..
au BufReadCmd,FileReadCmd *.txt.gpg set foldmethod=marker 

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
    set guifont=Monospace\ 10
endif

" Set tab completion to match bash
set wildmode=longest,list

" Enables the listing of open buffers (via airline plugin).
let g:airline#extensions#tabline#enabled = 1

" Add shortcut for opening/closing the buffer list.
:noremap <Leader>b :call BufferList()<CR>

" Add shortcut for deletoing the current buffer.
map <Leader>d :bd<CR>

" Syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']

" Uses the old regex engine for clojure files, as it is really slow
" otherwise..
autocmd BufNewFile,BufRead *.clj set re=1

" Sets ack.vim to use ag as the search engine instead of ack.
let g:ackprg = 'ag --vimgrep --smart-case'
cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack
