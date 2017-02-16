if &compatible
  set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
call dein#begin('~/.cache/dein')
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/deoplete.nvim')
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/vimfiler')
call dein#add('Shougo/vinarise')
call dein#add('mxw/vim-jsx')
call dein#add('nanotech/jellybeans.vim')
call dein#add('nathanaelkane/vim-indent-guides')
call dein#add('scrooloose/syntastic')
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
set smartcase

" status line settings
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

" no backup
set nowritebackup
set nobackup
set noswapfile
set noundofile

" spell check
set spelllang+=cjk
set spell

" no visual bell
set visualbell t_vb=
set noerrorbells

" highlight
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

colorscheme jellybeans

if has('python3')
  let g:deoplete#enable_at_startup = 1
endif

" vimfiler
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_safe_mode_by_default = 0
let g:vimfiler_directory_display_top = 0
let g:vimfiler_ignore_pattern = '^\%(.git\|.DS_Store\)$'

" syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_auto_loc_list = 1

" indent-guides
let g:indent_guides_enable_on_vim_startup = 1

" keymappps
nnoremap <silent> ,f :VimFilerBufferDir -create <CR>
nnoremap <silent> ,F :VimFilerBufferDir -create -split -horizontal <CR>
nnoremap <silent> <C-t> :tabe<CR>
