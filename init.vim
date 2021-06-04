source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/plugins/plugins.vim
source $HOME/.config/nvim/plugins/nvimtree.vim

" General settings
colorscheme onedark
set number
set noswapfile
set background=dark
set mouse=n
set nowrap

" Leader == space
nnoremap <SPACE> <Nop>
let mapleader=" "

map <leader>h :noh<CR>
map <leader>f :FZF<CR>
map <leader>w <C-W><C-W>
map <leader>pe i<%=  =><ESC>3hli
map <leader>er i<%  %><ESC>3hli

" Buffer navigation
nnoremap <C-l> :bn<CR>
nnoremap <C-h> :bp<CR>
nnoremap <C-q> :bd<CR>
" Close all buffers except current
command BufOnly silent! execute "%bd|e#|bd#"
nnoremap <leader>o :BufOnly<CR>

" CoC
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

