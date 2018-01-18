" set the jk and kj keys as escape
" make sure to disable one of these if you are writing about dijkstra
:imap jk <Esc>
:imap kj <Esc>

" enable syntax highlighting
syntax enable

"code folding for python
"set foldmethod=indent


" set highlighting for matches
set hlsearch
"sets the highlighting off
map <leader>, :nohlsearch<CR> 
" color theme
colorscheme onedark

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

"redraw only when it needs to
set lazyredraw

" braces highlight matchinng
set showmatch

" reload vimrc
:map <leader>R :source ~/.vimrc <CR>
" start fuzzy find
:map <leader>f :CtrlP <CR>
" tab left
:map <leader>H :tabp <CR>
" tab right
:map <leader>L :tabn <CR>
"tab new blank
:map <leader>t :tabedit <CR>

" buffer left
:map <leader>h :bp <CR>
" buffer right
:map <leader>l :bn <CR>
"remap <leader> + hjkl to move accross frames
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

"remap <leader> + q  to delete frame
nmap <silent> <leader>q :hide <CR>

" airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_splits = 1 "enable/disable displaying open splits per tab (only when tabs are opened). >
let g:airline#extensions#tabline#show_buffers = 1 " enable/disable displaying buffers with a single tab
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number


"irline#extensions#tabline#formatter = 'default' ctrlp settings
" sets the ctrlp to open in a new tab
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }
let g:ctrlp_show_hidden = 1 " allow search for dotfiles
" autosave
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode
nnoremap <leader>. :CtrlPTag<CR> 
"ctrlp Ctags
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
map <M-Left> <C-T>
map <M-Right> <C-]>


" keyword lookups for python
autocmd BufNewFile,BufRead *.py set keywordprg=pydoc


" you complete me
let g:ycm_collect_identifiers_from_tags_files
let g:ycm_min_num_of_chars_for_completion = 0
let g:ycm_python_binary_path = 'python'

"syntactics recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checker_args='--ignore=E501'
"
"let g:jedi#goto_command = "<leader>d"
"let g:jedi#goto_assignments_command = "<leader>g"
"let g:jedi#goto_definitions_command = ""
"let g:jedi#documentation_command = "K"
"let g:jedi#usages_command = "<leader>n"
"let g:jedi#completions_command = "<C-Space>"
"let g:jedi#rename_command = "<leader>r"
"
"NERD tree
map <C-n> :NERDTreeToggle<CR>
" tagbar
nmap <F8> :TagbarToggle<CR>


call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'vim-scripts/vim-auto-save'
Plug 'Valloric/YouCompleteMe'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
"Plug 'davidhalter/jedi-vim'
Plug 'vim-syntastic/syntastic'
Plug 'mikelue/vim-maven-plugin'
call plug#end()
