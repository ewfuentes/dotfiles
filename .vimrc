set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
if has("win32")
    set rtp+=$HOME/vimfiles/bundle/Vundle.vim
    call vundle#begin('$USERPROFILE/vimfiles/bundle')
elseif has("unix")
    let s:uname = system("uname -s")
    if s:uname = "Darwin"
        " Do Mac Stuff here
    endif
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
endif
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Auto Complete
Plugin 'Valloric/YouCompleteMe'
" Boatloads of colorschemes
Plugin 'flazz/vim-colorschemes'
" View marks
Plugin 'kshenoy/vim-signature'

" CtrlP
Plugin 'kien/ctrlp.vim'
" NerdTree
Plugin 'scrooloose/nerdtree'
" Vinegar
Plugin 'dhruvasagar/vim-vinegar'
" Status line upgrade
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"" Plugin 'L9'
" Git plugin not hosted on GitHub
"" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"" Plugin 'ascenator/L9', {'name': 'newL9'}

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

colorscheme PaperColor
set background=light
let g:airline_theme='papercolor'
" Enable highlighting of current line
set cursorline

" Get rid of user defined pattern issue
set shortmess+=c

" Enable Line Numbers
set number

" Enable UTF-8
set encoding=utf-8

" Expand Tabs
set expandtab
set tabstop=4
set softtabstop=0
set shiftwidth=4
set smarttab
" Don't write extra files
set nobackup
set nowb
set noswapfile

" Syntax highlighting on
syntax on

" Switch panes using tab in normal mode
nnoremap <tab> <C-w>w

" disable expanding tabs for make files
autocmd FileType make setlocal noexpandtab

" clear the preview window
let g:ycm_autoclose_preview_window_after_insertion = 1

" Enable search line mode
let g:ctrlp_cmd = 'CtrlPLastMode'
let g:ctrlp_extensions = ['tag', 'line', 'dir']
let g:ctrlp_working_path_mode = 'ra'

" Always show the status line

set laststatus=2

let g:airline_powerline_fonts=1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
