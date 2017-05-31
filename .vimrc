set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'tpope/vim-fugitive'
Plugin 'valloric/youcompleteme'
Plugin 'vim-airline/vim-airline'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mtscout6/syntastic-local-eslint.vim'
Plugin 'posva/vim-vue'
Plugin 'stanangeloff/php.vim'
Plugin 'xolox/vim-misc'
Plugin 'fatih/vim-go'
call vundle#end()

syntax on
filetype plugin on
" check one time after 4s of inactivity in normal mode
set autoread                                                                                                                                                                                    
au CursorHold * checktime  

let g:jsx_ext_required = 0 " Allow JSX in normal JS files

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_php_checkers=['php', 'phpcs']
let g:syntastic_php_phpcs_args='--standard=PSR2 -n'
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_vue_checkers = ['eslint']
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

autocmd BufNewFile,BufRead *{.js,.vue} setlocal nocompatible|set expandtab tabstop=4 shiftwidth=2 autoindent smartindent
autocmd BufNewFile,BufRead *{.c,.php} setlocal tabstop=4 shiftwidth=4 expandtab autoindent smartindent
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 

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
autocmd BufEnter *.vue set filetype=javascript

autocmd BufLeave,FocusLost * silent! wall
""Auto src .vimrc on save"
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
