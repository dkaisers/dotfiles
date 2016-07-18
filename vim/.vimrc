"--- VUNDLE CONFIG BEGIN

set shell=bash
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'majutsushi/tagbar'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tbastos/vim-lua'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on

"--- VUNDLE CONFIG END

" syntax highlighting
syntax enable
set background=dark
let g:solarized_termtrans=1
colorscheme solarized

" config
set laststatus=2      " display airline
set number            " display line numbers
set updatetime=100    " update time
set expandtab         " expand tabs
set tabstop=2         " tab column count
set shiftwidth=2      " shift width
set ttimeoutlen=10    " airline timeout
set t_Co=256          " airline colors
set mouse=a           " enable mouse support

let g:airline_powerline_fonts = 1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:rustfmt_autosave=1
let g:ycm_rust_src_path='/Users/doka/Developer/src/rust/src'

" keymaps
nmap <F2>  :NERDTreeToggle<CR>
nmap <F3>  :TagbarToggle<CR>
nmap <c-s> :w<CR>
