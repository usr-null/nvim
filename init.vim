set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set title
set background=dark
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set noswapfile            " disable creating swap file
set smarttab
set smartindent

call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'itchyny/lightline.vim'
Plug 'fxn/vim-monochrome'
Plug 'cohama/lexima.vim'

call plug#end()

colorscheme monochrome
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

nnoremap <A-n> :vs <CR> :term echo "Compiling" && g++ a.cpp -o a && echo "Done" && time ./a <CR>
