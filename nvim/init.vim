if &compatible
  set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
call dein#begin('~/.cache/dein')
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/deoplete.nvim')
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('nanotech/jellybeans.vim')
call dein#end()

filetype plugin indent on
syntax enable

set list
set listchars=eol:$,tab:>\
set number
set ruler
set title
set expandtab
set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set backspace=start,indent
set scrolloff=20
set ambiwidth=double
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set smartcase
set nowritebackup
set nobackup
set noswapfile
set noundofile
set spelllang+=cjk
set spell
set visualbell t_vb=
set noerrorbells

colorscheme jellybeans

if has('python3')
  let g:deoplete#enable_at_startup = 1
endif


