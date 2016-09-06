call pathogen#infect()
imap jj <Esc>
call pathogen#helptags()
set foldmethod=indent
set foldlevel=99
syntax on
filetype plugin indent on

"For window movment, use ctl + movement keys"
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set t_Co=256

set background=dark
colorscheme molokai

"Set prev/next tab to f7, f8"
nmap <F7> :tabp <CR>
nmap <F8> :tabn <CR>

"Make f9, f10 resize splits
nmap <F9> :vertical resize -5 <CR>
nmap <F10> :vertical resize +5 <CR>

nmap <c-o> :tabe<space>
nmap <c-t> :vsplit<space>

"Start nerdtree when vim starts
autocmd vimenter * NERDTree
" Start nerdtree when vim starts with no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Open or close nerdtree with ctrl-n
map <C-n> :NERDTreeToggle<CR>

"Close vim if nerdtree is the only buffer left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Turn on mouse integration by default
set mouse=a

set relativenumber
set nu
