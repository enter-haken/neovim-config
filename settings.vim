colorscheme nord

let mapleader=','

nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>f :NERDTreeFind<CR>

set title
set number
set ignorecase

" Umlaute
set termencoding=utf8
set enc=utf8
set fileencoding=utf8

set tabstop=2
set softtabstop=2
set shiftwidth=2

" ignore case in search when no uppercase search
set incsearch
set ignorecase
set smartcase

set autoindent
set expandtab

" disable swap files
set noswapfile
set nobackup
set nowritebackup        

"disable folding
set nofoldenable 

" switch buffers without saving
set hidden

nmap <Leader>a :Autoformat<CR>
