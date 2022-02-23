call plug#begin()

" themes
Plug 'nanotech/jellybeans.vim'
Plug 'arcticicestudio/nord-vim'

" general stuff
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'chiel92/vim-autoformat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'

" language server related
Plug 'neovim/nvim-lspconfig'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'neoclide/jsonc.vim'

" elixir
Plug 'elixir-editors/vim-elixir'

call plug#end()
