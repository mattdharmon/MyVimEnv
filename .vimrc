set nocompatible
set t_Co=256
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
filetype off                  " required!
call system("mkdir -p $HOME/.vim/{plugin,undo}")
let iCanHazVundle=1
if !filereadable($HOME . '/.vim/bundle/vundle/README.md')
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
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
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'kien/ctrlp.vim'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Raimondi/delimitMate'
Bundle 'elzr/vim-json'
Bundle 'digitaltoad/vim-jade'
Bundle 'bling/vim-airline'

if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :BundleInstall
endif

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
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors=0
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
set colorcolumn=80
set wildignore+=*/cache/*,*/node_modules/*,*/vendor/*
"set smarttab
map <f3> :!php -l %
map <f2> <ESC>:%s/\r//g<RETURN>
map <F8> :TagbarToggle<CR>
let g:ctrlp_working_path_mode = 'r'
autocmd VimEnter * NERDTree
