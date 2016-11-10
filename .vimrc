execute pathogen#infect()
set t_Co=256
syntax on
filetype plugin indent on
set laststatus=2
set noswapfile
set pastetoggle=<f5>
autocmd BufLeave,FocusLost * silent! wall
let mapleader = "\<Space>"
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](\.git|node_modules|\.sass-cache|bower_components|bui‌​ld)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'posva/vim-vue'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdcommenter'
call vundle#end()

set expandtab
set tabstop=2
set shiftwidth=2

let g:indentLine_color_term = 239
let g:indentLine_char = '¦'
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '˰'

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

syntax on
syntax enable
set wildmode=list:longest,full
set backspace=indent,eol,start
set number
set runtimepath^=~/.vim/bundle/ctrlp.vim

map <Leader>1 :NERDTreeToggle<CR>
map <Leader>s :w<CR>
map <Leader>q :q<CR>
map <Leader>x :x<CR>
map <Leader>p :CtrlP<CR>
nnoremap <Leader>w <C-w>

"----Auto-Commands----"
""Auto src .vimrc on save"
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
