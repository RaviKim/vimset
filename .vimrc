
"Set Key-map
"<F3> NerdTree
map <F3> : NERDTreeToggle<cr>
let NERDTreeQuitOnOpen=1 " Close NerdTree window after Finish
let NERDTreeShowHidden=1 " See Hidden file by force
map <F4> : Tlist <cr>

"Set Python Key-map
"<F6> : Python Execute short-cut key

"Set python file
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.py setlocal foldmethod=indent

set hlsearch "Searching highlighting
set incsearch
set showmatch
set autoindent
set smartcase
set cindent
set ruler
set nu
set ignorecase
set shiftwidth=4
set tabstop=4
set smartindent
set bs=eol,start,indent
set t_Co=256

set nocompatible

set tags+=/usr/src/linux-4.15.1/tags
set tags+=/usr/src/glibc-2.27/tags
set tags+=/usr/src/cpp_src/tags
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'The-NERD-tree'
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive' "required
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'nathanaelkane/vim-indent-guides'
" Plugin 'vim-airline/vim-airline'
Plugin 'ctrlp.vim'
Plugin 'jellybeans.vim'
Plugin 'taglist.vim'
Plugin 'lh-brackets'
call vundle#end()


filetype plugin indent on

if has("syntax")
	syntax on
endif

set laststatus=2

colorscheme jellybeans

"Make HSKim 180726
ca w!! w !sudo tee "%"
