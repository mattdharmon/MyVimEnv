set nocompatible
set t_Co=256
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
filetype off                  " required!

set rtp+=/home/dev/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree.git'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic.git'
Bundle 'majutsushi/tagbar'
Bundle 'wookiehangover/jshint.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'lunaru/vim-twig'
filetype plugin indent on
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
behave mswin
syntax on                                                                       
set background=dark                                                             
let g:solarized_termtrans = 1                                                   
let g:solarized_termcolors=256
colorscheme solarized
set number
set bs=2
set history=50
set ruler
set showcmd
set showmatch
set ignorecase
set smartcase
set incsearch
set autowrite
set hidden
set tabstop=4
set shiftwidth=4
set expandtab
"set smarttab
map <f3> :!php -l %
map <f2> <ESC>:%s/\r//g<RETURN>
map <F8> :TagbarToggle<CR>
execute pathogen#infect()
autocmd VimEnter * NERDTree
