"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" @author egulhan
" @file .vimrc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ultisnips
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set ultisnips triggers
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tab keys mapping
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","
nnoremap <leader>tx :tabnext<cr>
nnoremap <leader>tp :tabprevious<cr>
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tf :tabfirst<cr>
nnoremap <leader>tl :tablast<cr>
nnoremap <leader>to :tabonly<cr>
nnoremap <leader>tm :tabmove<space>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File type related auto-complete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto. enable auto-complete for specific file types
" how to use: 
"	- Ctrl+x and Ctrl+o
"	- Ctrl+x and Ctrl+p
"	- Ctrl+n (normal word auto-complete)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" html
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
" js
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
" css
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
" php
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" pathogen
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()
syntax on
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
set nowrap
set backupdir=/var/tmp/vimtmp
set nobackup
set noswapfile
set autoindent
set guifont=Monospace\ 9
chdir /var/www/
"let g:ragtag_global_maps = 1 

" Incremental search
set incsearch
" Highlight all the search pattern matches (disable temporarily :nohlsearch)
"set hlsearch
" Turn off auto-indent when pasting text
set pastetoggle=<F3>

" Enable syntax highlighting
syntax enable 

colorscheme desert
set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
"set expandtab

" Be smart when using tabs ;)
"set smarttab

" 1 tab == 4 spaces
"set shiftwidth=4
"set tabstop=4

" Linebreak on 500 characters
"set lbr
"set tw=500

set ai "Auto indent
"set si "Smart indent
"set wrap "Wrap lines
