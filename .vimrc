" Use Vim defaults instead of 100% vi compatibility
" Avoid side-effects when nocompatible has already been set.
if &compatible
	set compatible
endif

set cursorline
set encoding=utf-8
set backspace=indent,eol,start
set matchpairs+=<:>
set list
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,precedes:«,extends:»
set wildmenu
set showmatch
set hlsearch
set smartcase
set ignorecase
set incsearch
set ruler
set number relativenumber
set backup
set smarttab
set autoindent
set shiftwidth=4
set softtabstop=4
set tabstop=4
set scrolloff=4
set modeline
syntax on
filetype plugin indent on

" Move temporary files to a secure location to protect against CVE-2017-1000382
let &g:directory=$HOME . '/.cache'
let &g:undodir=&g:directory . '/vim/undo//'
let &g:backupdir=&g:directory . '/vim/backup//'
let &g:directory.='/vim/swap//'

" Create directories if they doesn't exist
if ! isdirectory(expand(&g:directory))
	silent! call mkdir(expand(&g:directory), 'p', 0700)
endif
if ! isdirectory(expand(&g:backupdir))
	silent! call mkdir(expand(&g:backupdir), 'p', 0700)
endif
if ! isdirectory(expand(&g:undodir))
	silent! call mkdir(expand(&g:undodir), 'p', 0700)
endif

" Mapping
noremap <Leader>\t :vertical rightbelow terminal<CR>
noremap <Leader>tt :terminal<CR>
noremap <Leader>ta :tab terminal<CR>
noremap <Leader>cb :set invcursorbind<CR>


" Colors
hi CursorLineNr ctermfg=green ctermbg=none cterm=none
hi CursorLine ctermfg=none ctermbg=black cterm=none
hi VertSplit ctermfg=green ctermbg=none cterm=none
hi Pmenu ctermbg=darkgray
hi PmenuSel ctermbg=darkgreen
hi SpecialKey ctermfg=darkgray
hi NonText ctermfg=darkgray
hi Search ctermfg=black
hi Todo ctermfg=darkyellow ctermbg=none cterm=bold
hi Folded ctermfg=gray ctermbg=black

" Automatic commands
au BufReadPost * call setpos(".", getpos("'\"")) " Remember cursor position
au BufWritePre * %s/\s\+$//e " Delete all trailing whitespace on save

