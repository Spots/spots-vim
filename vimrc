set nocompatible              " be iMproved, required
filetype off                  " required

set number
set relativenumber

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" nagios file sytanx
Bundle 'tejr/vim-nagios'
" file browser and tab support
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
" theme
Bundle 'jpo/vim-railscasts-theme'
" visualize indent levels
Bundle 'nathanaelkane/vim-indent-guides'
" autoset indent to match whats used in the file
Bundle 'Raimondi/YAIFA'
" show list of buffers on command bar
Bundle 'bling/vim-bufferline'
" close buffers without destroying window layout
Bundle 'moll/vim-bbye'
" if you open a file, make sure nerdtree opens the parent folder
Bundle 'airblade/vim-rooter'
" GIT in vim
Bundle 'tpope/vim-fugitive'
" ruby syntax in vim
Bundle 'vim-ruby/vim-ruby'
" keyword completion
Plugin 'Shougo/neocomplete'
" nifty colors on the command bar
Plugin 'bling/vim-airline'
" swap windows with \ww
Plugin 'wesQ3/vim-windowswap'
" use snippets in vim
Plugin 'SirVer/ultisnips'
" support todo.txt files
Plugin 'freitass/todo.txt-vim'
" when you type a surround, autocomplete it
Plugin 'jiangmiao/auto-pairs'
" when you fucked up the above suround use ds,cs to replace it with the right
" one
Plugin 'tpope/vim-surround'

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
let g:nerdtree_tabs_open_on_console_startup=1
set splitbelow
set splitright
autocmd VimEnter * wincmd p
:nnoremap <Leader>q :Bdelete<CR>
set modifiable
set hlsearch
set backspace=indent,eol,start
set mouse=a
set ttymouse=xterm2

set hidden
let g:neocomplete#enable_at_startup = 1
autocmd FileType           nagios setlocal foldmethod=marker foldmarker={,} foldlevel=9
:set nolist

" Set some keyboard commands
map <F5> :Gstatus <cr>
map <F6> :Gcommit -am "."
map <F7> :Gpush <cr>
map <F8> :! update-nagios<cr> 
:set directory=~/.vim/swap//

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>


