" be iMproved
set nocompatible
colorscheme molokai
set number
set encoding=utf-8
set guifont=Source\ Code\ Pro\ ExtraLight\ 12
set cursorline

"Transforme tab in spaces
set expandtab
"One tab = 4 spaces
set tabstop=4
"Indent 4 space
set shiftwidth=4

" No archives vim backup files
:set nobackup
:set nowritebackup
:set noswapfile

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" Bundle 'joonty/vim-phpqa.git'
let g:phpqa_codesniffer_args = "--standard=PSR2"
" Don't run messdetector on save (default = 1)
let g:phpqa_messdetector_autorun = 0

" Don't run codesniffer on save (default = 1)
let g:phpqa_codesniffer_autorun = 0

" Show code coverage on load (default = 0)
let g:phpqa_codecoverage_autorun = 1

"powerline config
:set rtp+=/home/wouerner/ownCloud/powerline/powerline/bindings/vim
:set laststatus=2 " Always display the statusline in all windows
:set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statuslin

" Vundle config ----------------------------------------------------------
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required!
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 Bundle 'joonty/vim-phpqa.git'
 Bundle "pangloss/vim-javascript"
 Bundle 'tobyS/pdv'
 Bundle 'wakatime/vim-wakatime'

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
