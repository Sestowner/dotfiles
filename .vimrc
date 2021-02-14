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
set splitbelow splitright
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
syntax on

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
noremap <Leader>\t :botright vertical terminal<CR>
noremap <Leader>tt :terminal<CR>

" Go up an down wrapped lines
map j gj
map k gk

" Splits navigation (C-hjkl)
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Splits resizing (S-hjkl)
noremap <S-h> :vertical resize -5<CR>
noremap <S-l> :vertical resize +5<CR>
noremap <S-j> :resize -5<CR>
noremap <S-k> :resize +5<CR>

" Toggle 2 split windows vert <-> horiz
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Copy/Paste to/from CLIPBOARD
vnoremap <C-c> "+y
vnoremap <C-x> "+x
map <C-p> "+p

" Colors
hi CursorLineNr ctermfg=green ctermbg=none cterm=none
hi CursorLine ctermfg=none ctermbg=none cterm=none
hi VertSplit ctermfg=green ctermbg=none cterm=none
hi Pmenu ctermbg=darkgray
hi PmenuSel ctermbg=darkgreen
hi SpecialKey ctermfg=darkgray
hi NonText ctermfg=darkgray

" Automatic commands
au BufReadPost * call setpos(".", getpos("'\"")) " Remember cursor position
au BufWritePre * %s/\s\+$//e " Delete all trailing whitespace on save

