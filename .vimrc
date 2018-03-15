set nocp

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
Plug 'Shougo/denite.nvim'
Plug 'tmhedberg/SimpylFold'
Plug 'JamshedVesuna/vim-markdown-preview'
" Plug 'python-mode/python-mode'
" Plug 'Valloric/YouCompleteMe'
call plug#end()

" Basically useless
if has("gui_macvim")
    set guifont=Monaco\ for\ Powerline:h12
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

" let g:ycm_autoclose_preview_window_after_completion=1
" map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$']

au BufRead,BufNewFile *.pyx set filetype=python
" Setting up syntastic
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_c_checkers = ['Cppcheck']
let g:syntastic_cpp_checkers = ['Cppcheck']
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

" vim-markdown
let vim_markdown_preview_github=1
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_browser='Google Chrome'

" airline
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
