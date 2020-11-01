call plug#begin()

" general stuff
Plug 'nanotech/jellybeans.vim'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'chiel92/vim-autoformat'

" language server related
Plug 'neovim/nvim-lspconfig'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" elixir
Plug 'elixir-editors/vim-elixir'

call plug#end()
