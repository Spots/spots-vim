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
Plugin 'VundleVim/Vundle.vim'
" nagios file sytanx
"Bundle 'tejr/vim-nagios'
" file browser and tab support
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
" theme
"Bundle 'jpo/vim-railscasts-theme'
Plugin 'tomasiser/vim-code-dark'
"Bundle 'challenger-deep-theme/vim'
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
"Plugin 'Shougo/neocomplete'
" nifty colors on the command bar
"Plugin 'bling/vim-airline'
Plugin 'itchyny/lightline.vim'
" swap windows with \ww
"Plugin 'wesQ3/vim-windowswap'
" use snippets in vim
"Plugin 'Shougo/neosnippet'
"Plugin 'Shougo/neosnippet-snippets' 
" support todo.txt files
"Plugin 'freitass/todo.txt-vim'
" when you type a surround, autocomplete it
Plugin 'jiangmiao/auto-pairs'
" when you fucked up the above suround use ds,cs to replace it with the right
" one
Plugin 'tpope/vim-surround'
"View a calendar in VIM
"Bundle 'mattn/calendar-vim'
"Coffee Script syntax in vim
Plugin 'kchmck/vim-coffee-script'
"More natural scrolling
Plugin 'yuttie/comfortable-motion.vim'

"Show Tags in sidebar with F12"
Plugin 'majutsushi/tagbar'
""
"Powershell editing syntax
Plugin 'PProvost/vim-ps1'
"wiki in Vim
"Plugin 'vimwiki/vimwiki'

"super tab completion
"Plugin 'ervandew/supertab'

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

"colorscheme railscasts
colorscheme codedark

"colorscheme challenger_deep
"let g:lightline = { 'colorscheme': 'challenger_deep' }

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
set ttymouse=sgr
set hidden
"let g:neocomplete#enable_at_startup = 1

"" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

let g:neocomplete#enable_auto_select=1


" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
 " return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
" For no inserting <CR> key.
  return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction

" <TAB>: completion.
inoremap <expr><Tab>  pumvisible() ? "\<C-n>" : "\<Tab>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)

autocmd FileType           nagios setlocal foldmethod=marker foldmarker={,} foldlevel=9
:set nolist

" Set some keyboard commands
map <F5> :Gstatus <cr>
map <F6> :Gcommit -am "."
map <F7> :Gpush <cr>
map <F8> :! update-nagios<cr> 
:set directory=~/.vim/swap//

nmap <F12> :TagbarToggle<CR>

" turn off the arrow keys. Git Gud
"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>

"imap <up> <nop>
"imap <down> <nop>
"imap <left> <nop>
"imap <right> <nop>

" Use Shift-Tab for autocomplete
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"map <Leader>vw :VimwikiIndex<CR>
"let g:vimwiki_use_calendar=1
let NERDTreeMouseMode=2

" enable line numbers
let NERDTreeShowLineNumbers=1
"make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber"
nmap <F1> :NERDTreeToggle<CR>
