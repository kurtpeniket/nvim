colorscheme onedark
set number
set noswapfile
set background=dark
set mouse=n
set nowrap
set signcolumn=yes

" Leader == space
nnoremap <SPACE> <Nop>
let mapleader=" "

nnoremap <leader><TAB> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
map <leader>dd :bd<CR>
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
map <leader>b :ls<CR>:b<Space>
map <leader>f :FZF<CR>
map <leader>g :Ag<CR>
map <leader>w <C-W><C-W>
" ERB tags
map <leader>pe <ESC>i<%=  %><ESC>3hli
map <leader>er <ESC>i<%  %><ESC>3hli
" Rails raise
map <leader>ra <ESC>iraise .inspect<ESC>2bi
" New Ruby method
map <leader>de <ESC>i<TAB>def<CR>end<ESC>kA<SPACE>
" Do End loop
map <leader>do <ESC>A<SPACE>do<CR>end<ESC>kA<SPACE>\|\|<ESC>i
" Ruby interpolation
map <leader>[ <ESC>a#{}<ESC>i
" Remove highlight
map <leader>h :noh<CR>

" Close all buffers except current
command BufOnly silent! execute "%bd|e#|bd#"
nnoremap <leader>o :BufOnly<CR>

let g:ackprg = 'ag --nogroup --nocolor --column'

