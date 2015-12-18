set nocompatible              " be iMproved, required
filetype off                  " required

set number
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'jpo/vim-railscasts-theme'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Raimondi/YAIFA'
Bundle 'bling/vim-bufferline'
Bundle 'moll/vim-bbye'
Bundle 'airblade/vim-rooter'
Bundle 'tpope/vim-fugitive'
Bundle 'vim-ruby/vim-ruby'
Plugin 'bling/vim-airline'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

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
syntax enable

colorscheme railscasts
"set background=dark
let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_auto_colors = 1
let g:indent_guides_color_change_percent = 5
set ts=2 sw=2 et
let g:indent_guides_guide_size=1
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
set splitbelow
set splitright
autocmd VimEnter * wincmd p
:nnoremap <Leader>q :Bdelete<CR>
set modifiable
set hlsearch
set backspace=indent,eol,start
set mouse=a
set hidden
