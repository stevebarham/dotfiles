"       Defaults
syntax enable
set number

"       Colours
set background=dark
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized

"       Toggle search highlighting on F3
nnoremap <F3> :noh<CR>

"       Statusline hackery
set statusline =          " clear
set statusline+=%1*
set statusline+=\ %02n\  " leading zero 2 digit buffer number
set statusline+=%2*
set statusline+=\ %t\     " file tail
set statusline+=%3*
set statusline+=\ %{$USER}@%{$HOSTNAME}\ 
set statusline+=%r        " read only flag '[RO]'
set statusline+=%m        " modified flag '[+]' if modifiable
set statusline+=%h        " help flag '[Help]'
set statusline+=%=        " left/right separation point
set statusline+=%4*
set statusline+=\ c:%c    " column number
set statusline+=\ r:%l/%L\    " row (of rows)

set showmode  cmdheight=1
set laststatus=2           " always show statusline

hi User1 ctermbg=darkgray ctermfg=white cterm=bold
hi User2 ctermbg=darkred ctermfg=white cterm=bold
hi User3 ctermbg=black ctermfg=gray
hi User4 ctermbg=darkgray ctermfg=white cterm=bold
