"Casey Falk's Custom .vimrc

set autoread
set smartcase
set ignorecase
syntax enable

set autoindent
set expandtab
set smarttab
set shiftwidth=2   "Number of spaces to use per indent.
set softtabstop=2
set shiftround

set showmatch
set incsearch
set hlsearch

set nohidden
set nobackup
set noswapfile

set pastetoggle=<F2>


colorscheme CaseyCustom

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=   " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%=                           " right align
set statusline+=%-14.(%l,%c%V%)\             " offset
set statusline+=\(Lines:\%L)                 " Total Lines



" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif


" Start up Pathogen
execute pathogen#infect()


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" https://github.com/davidhalter/jedi-vim/blob/master/doc/jedi-vim.txt
let g:jedi#show_call_signatures = 2
let g:jedi#popup_on_dot = 0


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages = { "type": "style" }

