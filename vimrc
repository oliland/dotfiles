colorscheme molokai

call pathogen#infect()
syntax on
filetype plugin on
filetype indent on

" tabs getting all up in my shit
set expandtab
set tabstop=2
set shiftwidth=2

" sanity mode
set nocompatible
set modelines=0
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number
set dir=~/.vimswap//,/var/tmp//,/tmp//,.
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Better regular expressions
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

" Better formatting
set wrap
set textwidth=79
set formatoptions=qrn1

" Pretty characters
set list
set listchars=tab:▸\ ,eol:¬

" Don't use the arrow keys!
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Word count for latex files is F3!
map <F3> :w !detex \| wc -w<CR>
