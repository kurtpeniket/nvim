colorscheme onedark
set number
set noswapfile
set background=dark
set mouse=n
set nowrap

" Leader == space
nnoremap <SPACE> <Nop>
let mapleader=" "

"map <leader>l :bn<CR>
"map <leader>h :bp<CR>
"map <leader>q :bd<CR>
map <leader>f :FZF<CR>
map <leader>w <C-W><C-W>
map <leader>pe i<%=  %><ESC>3hli
map <leader>er i<%  %><ESC>3hli

" Close all buffers except current
command BufOnly silent! execute "%bd|e#|bd#"
nnoremap <leader>o :BufOnly<CR>

