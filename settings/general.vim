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

