" Dein Scripts-----------------------------
if &compatible
    set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')

    " Let dein manage dein
    " Required:
    call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

    call dein#add('scrooloose/nerdtree')
    call dein#add('christoomey/vim-tmux-navigator')
    call dein#add('ctrlpvim/ctrlp.vim')
    call dein#add('rking/ag.vim')
    call dein#add('w0rp/ale')
    call dein#add('vim-airline/vim-airline')
    call dein#add('vim-airline/vim-airline-themes')
    call dein#add('flazz/vim-colorschemes')
    call dein#add('ervandew/supertab')
    call dein#add('bling/vim-bufferline')
    call dein#add('xolox/vim-misc')
    call dein#add('xolox/vim-session')
    call dein#add('Shougo/deoplete.nvim')
    call dein#add('Shougo/denite.nvim')
    call dein#add('nathanaelkane/vim-indent-guides')
    call dein#add('Townk/vim-autoclose')
    call dein#add('airblade/vim-gitgutter')
    call dein#add('Xuyuanp/nerdtree-git-plugin')
    call dein#add('zivyangll/git-blame.vim')
    call dein#add('tpope/vim-fugitive')
    call dein#add('christoomey/vim-conflicted')

    " clang
    call dein#add('zchee/deoplete-clang')

    " golang
    call dein#add('fatih/vim-go')
    call dein#add('mdempsky/gocode')
    call dein#add('zchee/deoplete-go', {'build': 'make'})

    " javascript
    call dein#add('carlitux/deoplete-ternjs')

    " python
    call dein#add('zchee/deoplete-jedi')

    " php
    call dein#add('lvht/phpcd.vim')

    " typescript
    call dein#add('mhartington/nvim-typescript', {'build': './install.sh'})
    call dein#add('HerringtonDarkholme/yats.vim')
    call dein#add('leafgarland/typescript-vim')

    " php
    call dein#add('lvht/phpcd.vim')

    " Required:
    call dein#end()
    call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
    call dein#install()
endif

"End dein Scripts-------------------------

" Indentation, highlighting, and colorscheme
set backspace=indent,eol,start
syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

set number
set mouse=a
set autoindent
set wildmenu

colorscheme gruvbox

" airline settings
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = 'Ξ'
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'
let g:airline_section_c='%-3n%f'
let g:airline#extensions#ale#enabled=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#formatter='unique_tail_improved'

" ale settings
let g:ale_completion_enabled=1
let g:ale_sign_column_always=1
let g:ale_open_list=1
let g:ale_list_window_size=5

" Don't clutter dirs with tmp & swp
set backupdir=~/.tmp
set directory=~/.tmp

" better word wrap
set nolist wrap linebreak breakat&vim

" breakindent
set breakindent

" hilight search, make highlight increased, ignore case except user write upper case
set hlsearch
set incsearch
set ignorecase
set smartcase

" Always show gutter
set signcolumn=yes

" fold
set foldmethod=indent
set foldlevelstart=99

" use system clipboard
set clipboard=unnamedplus " or set clipboard=unnamed

" show hidden files in NERDTree
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeMinimalMenu=0

" deoplete
let g:deoplete#enable_at_startup=1
let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})

" ctrlp show hidden
let g:ctrlp_show_hidden = 1
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
if executable('ag')
    let g:ctrlp_use_caching=0
    let g:ctrlp_user_command='ag %s -i --nocolor --nogroup -g ""'
endif
