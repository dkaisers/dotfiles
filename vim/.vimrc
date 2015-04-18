" Not all plugins are usable with fish
set shell=/bin/sh

execute pathogen#infect()
syntax on
filetype plugin indent on

colorscheme Tomorrow-Night

set t_Co=256
set number
set noshowmode
set laststatus=2
set timeoutlen=50
set background=dark
set omnifunc=syntaxcomplete#Complete

let g:airline_powerline_fonts = 1
let g:used_javascript_libs = 'jquery,angularjs'

nmap <F2> :NERDTreeToggle<CR>
