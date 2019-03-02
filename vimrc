set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Tern JS autocompletion
Bundle 'ternjs/tern_for_vim', {'do': 'npm install'}
" Fuzzy search
Bundle 'junegunn/fzf.vim'
" JSON syntax highlighting
Bundle 'leshill/vim-json'
" HTML expansion
Bundle 'mattn/emmet-vim'
" React syntax checking
Bundle 'w0rp/ale'
" JSX Support
Bundle 'mxw/vim-jsx'
" Powerline
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" Colorschemes
Bundle 'flazz/vim-colorschemes'
" Enhance the native gf command	to go to node_modules
Bundle 'zoubin/vim-gotofile'
" Tools and env for Nodejs 
Bundle 'moll/vim-node'
" Built in Nodejs method and property completion
Bundle 'myhere/vim-nodejs-complete'
" Javaascript syntax highlightning
Bundle 'pangloss/vim-javascript'
" Retro groove color scheme
Bundle 'morhetz/gruvbox'
" NERDTree Pluging for file browsing
Bundle 'scrooloose/nerdtree'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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
map <C-n> :NERDTreeToggle<CR>
map <C-t> :NERDTree %<CR>
map <C-i> :PluginInstall<CR>
map <C-f> :Files<CR>

set backspace=indent,eol,start " backspace over everything in insert mode

let g:NERDTreeNodeDelimiter = "\u00a0"
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
let NERDTreeShowHidden=1

if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
      set guifont=Inconsolata\ for\ Powerline:h15
   endif
endif

syntax on
syntax enable
set background=dark

let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

set number tabstop=2 expandtab shiftwidth=2

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

" FZF path
set rtp+=/usr/local/opt/fzf
" Enable omnifunc
" set omnifunc=syntaxcomplete#Complete
