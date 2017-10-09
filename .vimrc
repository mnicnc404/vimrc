set nocp

call plug#begin('~/.vim/plugged')
Plug 'vim-syntastic/syntastic'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
" Plug 'nvie/vim-flake8'
Plug 'scrooloose/nerdtree'
Plug 'jnurmine/Zenburn'
Plug 'altercation/vim-colors-solarized'
Plug 'sickill/vim-monokai'
Plug 'Shougo/denite.nvim'
Plug 'tmhedberg/SimpylFold'
" Plug 'python-mode/python-mode'
" Plug 'Valloric/YouCompleteMe'
call plug#end()

if has("gui_macvim")
    set guifont=Inconsolata-g\ for\ Powerline:h12
endif

syntax enable
set autoindent
set background=dark
set backspace=indent,eol,start
set clipboard=unnamed
set encoding=utf-8
set expandtab
set foldlevel=99
set foldmethod=indent
set hlsearch
set laststatus=2
set nu
set shiftwidth=4
set showmatch
set smarttab
set smartcase
set softtabstop=4
set t_Co=256
set tabstop=4

let python_highlight_all=1
" colorscheme solarized
colorscheme gruvbox
" let g:gruvbox_contrast_dark='medium'


nnoremap <space> za
nnoremap <C-j> ddp
nnoremap <C-k> ddkP


" let g:ycm_autoclose_preview_window_after_completion=1
" map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$']

" Setting up powerline
set rtp+=/usr/local/lib/python3.6/site-packages/powerline/bindings/vim
let g:minBufExplForceSyntaxEnable=1
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" Setting up syntastic
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "∆"
let g:syntastic_style_error_symbol = "✠"
let g:syntastic_style_warning_symbol = "≈"

" " Setting up python-mode
" let g:pymode_options_max_line_length=120
" let g:pymode_python = 'python3'
" let g:pymode_doc = 0

