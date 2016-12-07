autocmd BufLeave,FocusLost * silent! wall

syntax enable
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'vim-airline/vim-airline'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mxw/vim-jsx'
Plugin 'mtscout6/syntastic-local-eslint.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'posva/vim-vue'
call vundle#end()


let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:indentLine_color_term = 239
let g:indentLine_char = '¦'
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '˰'

let g:syntastic_javascript_checkers = ['node_modules/.bin/eslint']
let g:syntastic_javascript_eslint_exec = 'node_modules/.bin/eslint'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set mouse=a
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set t_Co=256
set pastetoggle=<f5>
set wildmode=list:longest,full
set backspace=indent,eol,start
set number
set runtimepath^=~/.vim/bundle/ctrlp.vim
set laststatus=2

let mapleader = "\<Space>"
map <Leader>1 :NERDTreeToggle<CR>
map <Leader>s :w<CR>
map <Leader>q :q<CR>
map <Leader>x :x<CR>
map <Leader>p :CtrlP<CR>
map <Leader><Leader> :CtrlP<CR>
map <Leader>* <C-n>
noremap <Leader>w <C-w>
noremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](\.git|node_modules|\.sass-cache|bower_components|bui‌​ld)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

"----Auto-Commands----"
""Vue syntax of highlighting"
autocmd BufNewFile,BufRead *.vue setft=vue

""Auto src .vimrc on save"
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
