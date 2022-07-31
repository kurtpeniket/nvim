runtime macros/matchit.vim
let g:ruby_host_prog = 'rvm system do neovim-ruby-host'
set background=dark
"colorscheme onedark
colorscheme sonokai
highlight clear SignColumn
set signcolumn=number

let g:auto_save = 1
let g:auto_save_in_insert_mode = 0
let g:auto_save_silent = 1
set noswapfile

set sidescroll=1
set number
set mouse=n
set nowrap
set signcolumn=yes
set expandtab
set shiftwidth=2
set nrformats=
" set rnu
set spelllang=en_gb
set spell
cabbrev ec Econtroller

" Disable arrow keys
noremap <Up> <NOP>
inoremap <Up> <NOP>
vnoremap <Up> <NOP>
noremap <Down> <NOP>
inoremap <Down> <NOP>
vnoremap <Down> <NOP>
noremap <Left> <NOP>
inoremap <Left> <NOP>
vnoremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Right> <NOP>
vnoremap <Right> <NOP>

" Column line stuff
highlight CursorColumn ctermfg=Yellow ctermbg=Yellow cterm=bold guifg=yellow guibg=yellow gui=bold

nnoremap <space>c :call ToggleCuc()<CR>

let s:enabled = 0

function! ToggleCuc()
    if s:enabled
        :set cuc
        let s:enabled = 0
    else
        :set nocuc
        let s:enabled = 1
    endif
endfunction

" change the direction of new splits
set splitbelow
set splitright

" Leader == space
nnoremap <SPACE> <Nop>
let mapleader=" "

nnoremap <leader><TAB> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
" Remove default COC map
" unmap <leader>qf
map <leader>x :bd<CR>
map <leader>vs :vspl #<CR>
map <C-L> :bnext<CR>
map <C-H> :bprev<CR>
map <leader>b :ls<CR>:b<Space>
map <leader>f :FZF<CR>
map <leader>g :Ag<CR>
" map <leader>w <C-W><C-W>

" Move 1 more lines up or down in normal and visual selection modes
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv

" Close all buffers except current
command BufOnly silent! execute "%bd|e#|bd#"
nnoremap <leader>o :BufOnly<CR>

" Remove highlight
map <leader>h :noh<CR>

" console log variable under cursor
map <leader>lo <ESC>yiwoconsole.log();<ESC>hhp<ESC>

" Yank selection to system clipboard
noremap <leader>y "*y

" Yank inner word to system clipboard
noremap <leader>t viw"*y

" Yank current file path to system clipboard
noremap <leader>py :let @* = expand("%")<cr>

let g:ackprg = 'ag --nogroup --nocolor --column'

" Ruby stuff
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

lua require'nvim-tree'.setup { update_focused_file = { enable = true }, auto_close = true, view = { width = 40 }, actions = { open_file = { quit_on_open = true } } }
