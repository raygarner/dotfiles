set number
syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set mouse=a
set clipboard=unnamedplus
vnoremap <C-c> "+y
map <C-p> "+p
filetype detect
au BufNewFile,BufRead *.ms set filetype=groff
au BufNewFile,BufRead *.ms set spell
au BufNewFile,BufRead *.tex set spell
au BufNewFile,BufRead *.md set spell
hi clear SpellBad
hi SpellBad cterm=underline
hi SpellBad ctermfg=red
set background=dark
colorscheme gruvbox-material
