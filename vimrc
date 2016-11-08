execute pathogen#infect()
syntax on
filetype plugin indent on
syntax enable
set background=dark
colorscheme solarized 
set wildmode=list:longest,full
set backspace=indent,eol,start
let mapleader = ','
set number
set hlsearch
set incsearch
set expandtab 
set shiftwidth=4
set autoindent 
"-------------Split Management--------------"
""set splitbelow                 Make splits default to below..."
"set splitright                And to the right. This feels more natural"
"nmap <C-J> <C-W><C-J>
"nmap <C-K> <C-W><C-K>
"nmap <C-H> <C-W><C-H>
"nmap <C-L> <C-W><C-L>
""---Mappings---"
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader><space> :nohlsearch<cr>
"----Auto-Commands----"
""Auto src .vimrc on save"
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
