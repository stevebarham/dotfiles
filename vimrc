"  Defaults
syntax on
filetype plugin indent on
set number
set list
set listchars=tab:>\ ,trail:\$

"  Load Pathogen
execute pathogen#infect()
execute pathogen#helptags()

"  Colours
set background=dark
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized

"  Rebind some keys
nnoremap <A-Left> :tabprevious<CR>
nnoremap <A-Right> :tabnext<CR>
nnoremap <C-n> :CommandT<CR>
map <C-e> <Plug>(expand_region_expand)
map <C-S-e> <Plug>(expand_region_shrink)

"  Map move line up / down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

"  Leave some space at the top / bottom
set scrolloff=10

"  Toggle search highlighting on F3
nnoremap <F3> :noh<CR>
set incsearch
set smartcase
set ignorecase

"  Statusline hackery
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

hi TabLineSel ctermfg=darkred ctermbg=white
hi TabLineFill ctermfg=darkgray ctermbg=black
