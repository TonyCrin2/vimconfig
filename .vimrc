set number
syntax enable
set background=dark
let g:solarized_italics=0
colo solarized8
set termguicolors
set mouse=a

set ttimeout
set ttimeoutlen=50

set laststatus=2

let mapleader = " "
let g:mapleader = " "


set belloff=all

"Ps = 0  -> blinking block.
"Ps = 1  -> blinking block (default).
"Ps = 2  -> steady block.
"Ps = 3  -> blinking underline.
"Ps = 4  -> steady underline.
"Ps = 5  -> blinking bar (xterm).
"Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"


" Vim Plug
call plug#begin()

Plug 'lifepillar/vim-solarized8'

Plug 'mhinz/vim-startify'

Plug 'itchyny/lightline.vim'

Plug 'scrooloose/nerdtree'

call plug#end()

set noshowmode

let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

let g:lightline.mode_map = {
		    \ 'n' : '󰚀 NORMAL',
		    \ 'i' : '󰚀 INSERT',
		    \ 'R' : '󰚀 REPLACE',
		    \ 'v' : '󰚀 VISUAL',
		    \ 'V' : '󰚀 V-LINE',
		    \ "\<C-v>": '󰚀 V-BLOCK',
		    \ 'c' : '󰚀 COMMAND',
		    \ 's' : '󰚀 SELECT',
		    \ 'S' : '󰚀 S-LINE',
		    \ "\<C-s>": '󰚀 S-BLOCK',
		    \ 't': '󰚀 TERMINAL',
		    \ }

let g:lightline.separator = { 'left': '', 'right': '' }
let g:lightline.subseparator = { 'left': '', 'right': '' }


