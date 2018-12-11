set t_Co=256

colorscheme torte
syntax enable
hi normal ctermbg=236 guibg=#303030

" allow override of variables used by netrw
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

set number
" set relativenumber
autocmd FileType netrw set number
" autocmd FileType netrw set relativenumber

set cursorline
set cursorcolumn
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set hlsearch
set colorcolumn=81
set timeoutlen=150
set laststatus=2

hi User1 ctermbg=grey ctermfg=black guibg=grey guifg=black
hi User2 ctermbg=darkgreen ctermfg=white guibg=darkgreen guifg=white
hi User3 ctermbg=blue ctermfg=white guibg=blue guifg=white
hi User4 ctermbg=red ctermfg=white guibg=red guifg=white

set statusline=
set statusline+=%3*\ %f%4*%r%2*%m%3*\ \  "blue section, filename, modification
set statusline+=%1*%F "full path
set statusline+=%= "right side of statusline below
set statusline+=<\ %l\ /\ %L,\ %c\ \>\ %y%2*\ %n\  "line, column, filetype, buffer

hi CursorLine cterm=NONE ctermbg=234 guibg=#1c1c1c
hi CursorColumn cterm=NONE ctermbg=234 guibg=#1c1c1c
hi ColorColumn cterm=NONE ctermbg=235 guibg=#262626

highlight Trailing ctermbg=darkblue ctermfg=white guibg=darkblue guifg=white
match Trailing /\s\+$/

map <PageUp> <>
map <PageDown> <>
map <C-h> gT
map <C-l> gt
map <C-j> <C-W>w
map <C-k> <C-W>W
imap jf <Esc>l
imap KJ <Esc>l
imap jc <Esc>u
imap KH <Esc>u
cmap jf <C-c>
cmap KJ <Esc>l
vmap v <Esc>
vmap jf <Esc>
nmap ; :
