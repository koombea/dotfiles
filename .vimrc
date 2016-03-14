" Highlight default syntax
syntax on

" Vundle config
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
source ~/.vim/bundles.vim
if filereadable(expand('~/.vim/bundles.vim.local'))
  source ~/.vim/bundles.vim.local
endif
call vundle#end()

" Allow set indent per filetype
filetype plugin indent on

" Visual notification
set visualbell

" Menu for autocomplete for a path
set wildmenu
set wildmode=list:longest,full

" Open new buffers bellow and right
set splitright
set splitbelow

" Allow send buffers to the background
set hidden

" GUI options
set guifont=Monaco:h16
set guioptions-=T guioptions-=e guioptions-=L guioptions-=r

" Display line numbers
set number

" Use bash when executing shell commands
set shell=bash

" Set columns, lines and line numbers
augroup vimrc
  autocmd!
  autocmd GuiEnter * set columns=120 lines=70 number
augroup END

" Add comma as leader
:nmap , \

" Map window prefix to ommit W
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" vim tab navigation
nnoremap th :tabfirst<CR>
nnoremap tj :tabprev<CR>
nnoremap tk :tabnext<CR>
nnoremap tl :tablast<CR>
nnoremap tc :tabclose<CR>
nnoremap tn :tabnew<CR>

" disable arrow navigation keys
inoremap  <Up>    <NOP>
inoremap  <Down>  <NOP>
inoremap  <Left>  <NOP>
inoremap  <Right> <NOP>
noremap   <Up>    <NOP>
noremap   <Down>  <NOP>
noremap   <Left>  <NOP>
noremap   <Right> <NOP>

" Better search behavior
set hlsearch
set incsearch
set ignorecase
set smartcase

" Unhighlight search results
map <Leader><space> :nohl<cr>

" Don't scroll off the edge of the page
set scrolloff=5

" This uses Ack.vim to search for the word under the cursor
nnoremap <leader><bs> :Ag! '\b<c-r><c-w>\b'<cr>

" NERDTree configuration
let NERDTreeIgnore=['\~$', 'tmp', '\.git', '\.bundle', '.DS_Store', 'tags', '.swp']
let NERDTreeShowHidden=1
let g:NERDTreeDirArrows=0
map <Leader>n :NERDTreeToggle<CR>
map <Leader>fnt :NERDTreeFind<CR>

" Set default indentation to 2 spaces
set softtabstop=2 shiftwidth=2 expandtab

colorscheme monokai

" vp doesn't replace paste buffer
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()

" ctrlp.vim config
if get(g:, 'loaded_ctrlp', 1)
  let g:ctrlp_match_window_reversed = 0
  let g:ctrlp_working_path_mode = 'a'
  let g:ctrlp_max_height = 20
  let g:ctrlp_match_window_bottom = 0
  let g:ctrlp_switch_buffer = 0
  let g:ctrlp_custom_ignore = '\v.DS_Store|.sass-cache|.scssc|tmp|.bundle|.git|node_modules|vendor|bower_components$'
endif

" Disable vim backups
set nobackup

" Disable swapfile
set noswapfile

" The encoding displayed.
set encoding=utf-8

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
