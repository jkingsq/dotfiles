set t_Co=256

colorscheme torte
syntax enable
hi normal ctermbg=236
set number
set relativenumber
set cursorline
set cursorcolumn
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set hlsearch
set colorcolumn=81
set timeoutlen=150
set laststatus=2

hi User1 ctermbg=grey ctermfg=black
hi User2 ctermbg=darkgreen ctermfg=white
hi User3 ctermbg=blue ctermfg=white
hi User4 ctermbg=red ctermfg=white

set statusline=
set statusline+=%3*\ %f%4*%r%2*%m%3*\ \  "blue section, filename, modification
set statusline+=%1*%F "full path
set statusline+=%= "right side of statusline below
set statusline+=<\ %l\ /\ %L,\ %c\ \>\ %y%2*\ %n\  "line, column, filetype, buffer

hi CursorLine cterm=NONE ctermbg=234 guibg=black
hi CursorColumn cterm=NONE ctermbg=234 guibg=black
hi ColorColumn cterm=NONE ctermbg=235 guibg=black

highlight Trailing ctermbg=darkblue ctermfg=white guibg=darkblue guifg=white
match Trailing /\s\+$/

"   highlight BEmoji gui=bold ctermbg=red ctermfg=white
"   match BEmoji /B/

map <PageUp> <>
map <PageDown> <>
map <C-h> gT
map <C-l> gt
map <C-/> :nohl
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
nmap <Space>h 10h
nmap <Space>l 10l
nmap <Space><Space>h ^
nmap <Space><Space>l $
nmap <Space>j 5j
nmap <Space>k 5k
