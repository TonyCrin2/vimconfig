set nocompatible
set number
syntax enable

packadd comment

"nnoremap <F5> :set relativenumber!<CR>
nnoremap <F10> :syntax off <bar> :colorscheme yin <bar> :Goyo <CR> 
nnoremap <F9> :syntax on <bar> :colorscheme solarized8 <bar> :Goyo! <CR> 

nnoremap <F8> :if exists("g:syntax_on") <Bar>
        \   syntax off <Bar>
        \ else <Bar>
        \   syntax enable <Bar>
        \ endif <CR>

nnoremap <F12> :setlocal spell! spelllang=en_gb<CR>

set background=dark
let g:solarized_italics=0
colo solarized8
set termguicolors
nnoremap <F6> :let &bg=(&bg=='light'?'dark':'light')<CR>
"autocmd OptionSet background
    \ execute 'source' globpath(&rtp,
    \ 'autoload/lightline/colorscheme/solarized.vim')
    \ | call lightline#colorscheme() | call lightline#update()

nnoremap <silent> <F7> :execute "set colorcolumn="
    \ . (&colorcolumn == "" ? "80" : "")<CR>

set virtualedit=all
set nocursorline
set nocursorcolumn
set ttyfast                     " Faster term redrawing, scrolling; perhaps
set lazyredraw
set autoread
"autocmd! FocusGained,BufEnter * checktime
"set -g focus-events on
set noswapfile
set nobackup nowritebackup      " Disable file backups when writing files
set undodir=~/.vim/undodir
set undofile
set expandtab                   " Use the appropriate number of spaces to tab
set smarttab                    " A tab in front of a line inserts spaces
set shiftwidth=4                " # of spaces to use for autoindent
set softtabstop=4               "Bacspace through expanded tabs
set tabstop=4                   " # of spaces that a tab counts for
set textwidth=80                " Make all lines 80 chars or less
set wrap                        " Wrap lines longer than 80 chars 
set linebreak                   " Wrap lines when convenient
set nojoinspaces                " Set 1 space btwn lines/periods to be joined
set scrolloff=999               " Working line will always be in the center
set title                       " Set title of the Vim window
set titleold=                   " Revert to original title when exiting
set showcmd                     " Do show incomplete cmds [bc Lightline]
set autoindent                  " Use existing indent depth starting a new line
set smartindent                 " Do smart indenting when starting a new line
set ruler


" set list
" set listchars=tab:┆\ ,trail:•,extends:#,nbsp:.

set incsearch
set hlsearch
set ignorecase
set smartcase
set gdefault
"set showmatch

set ttimeout
set ttimeoutlen=50

set laststatus=2

let mapleader = " "
let g:mapleader = " "

set belloff=all
set nobackup                    " Disable file backups when writing files
set mouse=a

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

Plug 'romainl/vim-cool'

Plug 'ap/vim-css-color'

Plug 'Raimondi/delimitMate'

Plug 'lifepillar/vim-solarized8'

Plug 'TonyCrin2/vim-startify'

Plug 'TonyCrin2/lightline.vim'        

Plug 'mbbill/undotree'

Plug 'TonyCrin2/syntastic'

Plug 'junegunn/goyo.vim'

Plug 'pgdouyon/vim-yin-yang'

Plug 'sainnhe/everforest'

call plug#end()

set noshowmode
set shortmess+=F
"set shortmess+=a

 let g:lightline = {
    \ 'colorscheme': 'solarized',
    \ }

 let g:lightline.mode_map = {
            \ 'n' : '  NORMAL',
            \ 'i' : '  INSERT',
            \ 'R' : '  REPLACE',
            \ 'v' : '  VISUAL',
            \ 'V' : '  V-LINE',
            \ "\<C-v>": '  V-BLOCK',
            \ 'c' : '  COMMAND',
            \ 's' : '  SELECT',
            \ 'S' : '  S-LINE',
            \ "\<C-s>": '  S-BLOCK',
            \ 't': '  TERMINAL',
            \ }

let g:lightline.separator = { 'left': '', 'right': '' }
let g:lightline.subseparator = { 'left': '', 'right': '' }

let g:undotree_DiffCommand = "FC"
nnoremap <F5> :UndotreeToggle<CR>

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
