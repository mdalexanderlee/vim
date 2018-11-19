" To install mucomplete run the following commands
" mkdir -p ~/.vim/pack/bundle/start
" cd ~/.vim/pack/bundle/start && \
" git clone --depth 1 https://github.com/lifepillar/vim-mucomplete.git

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'kien/ctrlp.vim'
Plugin 'yggdroot/indentline'
Plugin 'raimondi/delimitmate'
Plugin 'w0rp/ale'
Plugin 'morhetz/gruvbox'
Plugin 'bling/vim-airline'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

Plugin 'scrooloose/nerdcommenter'

Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable

" Change the map leader
let mapleader = ","

" Color Scheme Settings
" If colorscheme doesn't change, try running
" mkdir ~/.vim/colors
" cp ~/.vim/bundle/gruvbox/colors/gruvbox.vim ~/.vim/colors/
set t_Co=256
colorscheme gruvbox
set background=dark

" Highlight matched search results
set hlsearch

" Show line number
set nu

" Taken from https://www.reddit.com/r/vim/wiki/tabstop
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab

" Ale Settings
" To enable autocomplete, have to make sure that clangd is installed and set
" the appropriate variable
let g:ale_linters = {'cpp': ['clangd']}
let g:ale_c_parse_makefile = 1
" let g:ale_completion_enabled = 1
let g:ale_echo_msg_format = '%linter% says %s'

" Turn omnifunc on
set omnifunc=syntaxcomplete#Complete

" mucomplete settings
" Refer to note at top to install mucomplete
set completeopt+=menuone
set completeopt+=noselect
set completeopt-=preview
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " If Vim beeps during completion
let g:mucomplete#chains = { 'default': [ 'ulti' , 'omni', 'keyn', 'file' ] }
let g:mucomplete#enable_auto_at_startup = 1

"UltiSnips settings
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<F4>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" NerdCommenter Settings
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" Movement
map <S-UP> {
map <S-DOWN> }
map <S-RIGHT> w
map <S-LEFT> b
map <C-z> zz
