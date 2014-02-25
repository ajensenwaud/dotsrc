execute pathogen#infect()
syntax on
filetype plugin indent on
color zenburn


set modeline
set tabstop=2
set shiftwidth =2
set smarttab
set expandtab
set wildchar=9
set virtualedit=block
set clipboard+=unnamed
set showmatch

set wrap
set linebreak
set history=50
set number ruler
set incsearch
set hlsearch
set smartcase
set cursorline
set selectmode=key
set showtabline=2
set laststatus=2
set wildmenu
set encoding=utf8
set fileencoding=utf8

syntax on " syntax hilight on
syntax sync fromstart 
filetype plugin indent on

" tab navigation like firefox
nmap <C-S-tab> :tabprevious<cr>
nmap <C-tab> :tabnext<cr>
map <C-S-tab> :tabprevious<cr>
map <C-tab> :tabnext<cr>
imap <C-S-tab> <ESC>:tabprevious<cr>i
imap <C-tab> <ESC>:tabnext<cr>i
nmap <C-t> :tabnew<cr>
imap <C-t> <ESC>:tabnew<cr> 
" map \tx for the console version as well
if !has("gui_running")
 nmap <Leader>tn :tabnext<cr>
 nmap <Leader>tp :tabprevious<cr>
 nmap <Leader><F4> :tabclose<cr>
end
