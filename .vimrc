set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'raimondi/delimitmate'
Plugin 'majutsushi/tagbar'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-commentary'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jistr/vim-nerdtree-tabs'
" if vim --version does not show python3 support, then sudo apt-get install vim-nox
" Plugin 'valloric/youcompleteme'
Plugin 'chriskempson/vim-tomorrow-theme'
" Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'TagHighlight'
Plugin 'sickill/vim-monokai'
" Plugin 'godlygeek/csapprox'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'vectorstorm/vim-csyn'
Plugin 'junegunn/seoul256.vim'

call vundle#end()            " required
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line
set number
let g:nerdtree_tabs_open_on_gui_startup = 0
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-\> :NERDTreeTabsToggle<CR>
" color themes and stuff
syntax enable
" colorscheme monokai
set background=dark
" colorscheme Tomorrow-Night
colorscheme seoul256
" set t_Co=16
" let g:solarized_termcolors=16
" colorscheme solarized

" tab spacing stuff
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
" disable auto comment on next line
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
nmap <F8> :TagbarToggle<CR>
" auto new line in delimitMate
let delimitMate_expand_cr = 1
map <C-Left> :tabprevious<CR>
map <C-Right> :tabnext<CR>
map <C-t> :tabnew 

" vim airline stuff
set linespace=0
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.spell = 'Ꞩ'
" let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_theme='understated'
let g:airline#extensions#tabline#show_buffers = 0

" filetype plugin on
" makes easymotion only need one leader
map <Leader> <Plug>(easymotion-prefix)
set mouse=a
" easier navigation through splits
map <C-J> <C-W><C-J>
map <C-K> <C-W><C-K>
map <C-L> <C-W><C-L>
map <C-H> <C-W><C-H>
set splitbelow
set splitright
set foldmethod=syntax
" disables auto fold on launch
au BufRead * normal zR
" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

set cursorline
