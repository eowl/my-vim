set nocompatible
filetype off

syntax enable
filetype plugin indent on

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set hlsearch
set ignorecase
set smartcase
set incsearch
set ruler
set nu
set backspace=2
set showmatch
set autoindent

set rtp+=~/.vim/bundle/Vundle.vim


call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'mattn/emmet-vim'
Plugin 'chriskempson/vim-tomorrow-theme'

call vundle#end()

colorscheme Tomorrow-Night

" Highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn


" Emmet
let g:user_emmet_leader_key='<C-Z>'

" NERDTree
map <C-n> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1

let NERDTreeIgnore = [
  \'\.DS_Store$',
  \'\.git$',
  \'\.gitkeep$',
  \'\.keep$',
  \'\.swp$'
\]


autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


set wildignore+=*/tmp/*,*.so,*.swp,*.zip

