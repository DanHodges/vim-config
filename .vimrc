autocmd BufLeave,FocusLost * silent! wall

syntax enable
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Yggdroot/indentLine'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/syntastic'
Plugin 'mxw/vim-jsx'
call vundle#end()


let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:indentLine_color_term = 239
let g:indentLine_char = '¦'
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '˰'

let g:syntastic_javascript_checkers = ['node_modules/.bin/eslint']
let g:syntastic_javascript_eslint_exec = 'node_modules/.bin/eslint'


set expandtab
set tabstop=2
set shiftwidth=2
set t_Co=256
set pastetoggle=<f5>
set wildmode=list:longest,full
set backspace=indent,eol,start
set number
set runtimepath^=~/.vim/bundle/ctrlp.vim

let mapleader = "\<Space>"
map <Leader>1 :NERDTreeToggle<CR>
map <Leader>s :w<CR>
map <Leader>q :q<CR>
map <Leader>x :x<CR>
map <Leader>p :CtrlP<CR>
map <Leader>* <C-n>
nnoremap <Leader>w <C-w>
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](\.git|node_modules|\.sass-cache|bower_components|bui‌​ld)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

"----Auto-Commands----"
""Auto src .vimrc on save"
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
