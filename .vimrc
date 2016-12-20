set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'vim-airline/vim-airline'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mxw/vim-jsx'
Plugin 'mtscout6/syntastic-local-eslint.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'posva/vim-vue'
Plugin 'stanangeloff/php.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'vimwiki/vimwiki'
call vundle#end()

syntax on
filetype plugin on

let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:easytags_async = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_php_checkers = ['php']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_vue_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

set nocompatible
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
autocmd FileType php set tabstop=4|set shiftwidth=4|set expandtab

set t_Co=256
set pastetoggle=<f5>
set wildmode=list:longest,full
set backspace=indent,eol,start
set number
set runtimepath^=~/.vim/bundle/ctrlp.vim
set laststatus=2
set directory=$HOME/.vim/swapfiles//


let mapleader = "\<Space>"
nmap <BS> <C-^>
map <Leader>1 :NERDTreeToggle<CR>
map <Leader>s :w<CR>
map <Leader>q :q<CR>
map <Leader>x :x<CR>
map <Leader>p :CtrlP<CR>
map <Leader>h :bp<CR>
map <Leader>l :bn<CR>
map <Leader><Leader> :CtrlP<CR>
noremap <Leader>w <C-w>
noremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](\.git|node_modules|\.sass-cache|public|bower_components|bui‌​ld)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

"----Auto-Commands----"
""Vue syntax of highlighting"
autocmd BufNewFile,BufRead *.vue set ft=vue

autocmd BufLeave,FocusLost * silent! wall
""Auto src .vimrc on save"
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

""php namespace"
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>
