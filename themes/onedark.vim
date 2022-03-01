" onedark.vim override: Don't set a background color when running in a terminal;
if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    "let s:new = { "gui": "#89ddff", "cterm": "170", "cterm16": "5" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
    "autocmd ColorScheme * call onedark#set_highlight("Function", { "fg": s:new })
  augroup END
endif

hi Comment cterm=italic
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256
"let g:onedark_color_overrides = {
"\ "background": {"gui": "#2F343F", "cterm": "235", "cterm16": "0" },
"\ "purple": { "gui": "#89ddff", "cterm": "170", "cterm16": "5" }
"\}

syntax on
colorscheme onedark

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

