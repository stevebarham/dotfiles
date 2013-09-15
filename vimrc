"	Defaults
syntax on
filetype plugin indent on
set number
set list

	"	Load Pathogen
execute pathogen#infect()
execute pathogen#helptags()

"	Colours
set background=dark
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized

"	Rebind some keys
nnoremap <A-Left> :tabprevious<CR>
nnoremap <A-Right> :tabnext<CR>
nnoremap <C-n> :CommandT<CR>
map <C-e> <Plug>(expand_region_expand)
map <C-S-e> <Plug>(expand_region_shrink)


"	Toggle search highlighting on F3
nnoremap <F3> :noh<CR>
set incsearch
set smartcase
set ignorecase

"	Statusline hackery
set statusline =          " clear
set statusline+=%1*
set statusline+=\ %02n\  " leading zero 2 digit buffer number
set statusline+=%2*
set statusline+=\ %t\     " file tail
set statusline+=%3*
set statusline+=\ %{$USER}@%{hostname()}\ 
set statusline+=%r        " reu only flag '[RO]'
set statusline+=%m        " modified flag '[+]' if modifiable
set statusline+=%h        " help flag '[Help]'
set statusline+=%=        " left/right separation point
set statusline+=%4*
set statusline+=\ c:%c    " column number
set statusline+=\ r:%l/%L\    " row (of rows)

set showmode  cmdheight=1
set laststatus=2           " always show statusline
set showtabline=2          " always show tab line

hi User1 ctermbg=darkgray ctermfg=white cterm=bold
hi User2 ctermbg=darkred ctermfg=white cterm=bold
hi User3 ctermbg=black ctermfg=gray
hi User4 ctermbg=darkgray ctermfg=white cterm=bold
