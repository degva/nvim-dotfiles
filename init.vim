call plug#begin()

" Git gutter
Plug 'airblade/vim-gitgutter'

" Jade/Pug vim
Plug 'digitaltoad/vim-pug'

" Airline
Plug 'vim-airline/vim-airline'

" Nerdtree
Plug 'scrooloose/nerdtree'

" Deoplete
" Plug 'Shougo/deoplete.nvim'
" Plug 'zchee/deoplete-clang'

" You complete me
Plug 'Valloric/YouCompleteMe'

" gruvbox please
Plug 'morhetz/gruvbox'

" Plug 'Yggdroot/indentLine'
"let g:indentLine_char = ''
"let g:indentLine_enabled = 1

call plug#end()

" General settings
set nu
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set noexpandtab
syntax on

" Colorscheme
set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"

" NERD Tree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" - MAP NERDTree
map <F3> :NERDTreeToggle<CR>
" - Close vim if the only window open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" - To create a line in 80
set colorcolumn=80

" Airline!
let g:airline_powerline_fonts = 1

" use deoplete
"let g:deoplete#enable_at_startup = 1
"let g:deoplete#enable_smart_case = 1
"let g:deoplete#file#enable_buffer_path = 1

"let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
"let g:deoplete#sources#clang#clang_header = '/usr/lib/clang'
"let g:deoplete#sources#clang#std#cpp = 'c++1z'
"let g:deoplete#sources#clang#sort_algo = 'priority'
"let g:deoplete#sources#clang#flags = ['-Iinclude']
"let g:clang_use_library = 1

"let g:tern_request_timeout = 1
"let g:tern_show_signature_in_pum = 0  " This do disable full signature type on autocomplete

" ESC issue
if ! has('gui_running')
  set ttimeoutlen=10
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
  augroup END
endif

" If you prefer the Omni-Completion tip window to close when a selection is
" " made, these lines close it on movement in insert mode or when leaving
" " insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" For you complete me
let g:python_host_prog = '/usr/bin/python2'
