" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'joshdick/onedark.vim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tmsvg/pear-tree'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'preservim/nerdcommenter'
Plug 'gregsexton/matchtag'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'vimwiki/vimwiki'
Plug 'Pocco81/AutoSave.nvim'
Plug 'tpope/vim-rails'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

