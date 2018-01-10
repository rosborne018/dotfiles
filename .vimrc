" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" shows commands 
set showcmd

" leader keys
let mapleader = " "

" reload vimrc
:map <leader>r :source ~/.vimrc <CR>
" start fuzzy find
:map <leader>f :CtrlP <CR>
" tab left
:map <leader>H :tabp <CR>
" tab right
:map <leader>L :tabn <CR>

"remap <leader> + hjkl to move accross frames
nmap <silent> <leader>k :wincmd k<CR>
nmap <silent> <leader>j :wincmd j<CR>
nmap <silent> <leader>h :wincmd h<CR>
nmap <silent> <leader>l :wincmd l<CR>

"remap <leader> + q  to delete frame
nmap <silent> <leader>q :hide <CR>



" airline settings
let g:airline_theme='badwolf'

" ctrlp settings
" sets the ctrlp to open in a new tab
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }
" autosave
let g:auto_save = 1  " enable AutoSave on Vim startup

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'vim-scripts/vim-auto-save'
call plug#end()
