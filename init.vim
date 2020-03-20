set nocompatible
filetype plugin on
filetype on
set number
syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set mouse=a
set clipboard=unnamedplus

"copy and pasting
vnoremap <C-c> "+y
map <C-p> "+p

"remember position in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

filetype detect
au BufNewFile,BufRead *.ms,*.me,*.mom,*.man set filetype=groff
au FileType groff set spell
au BufNewFile,BufRead *.tex set spell
au BufNewFile,BufRead *.md set spell

"underline in red spelling errors
hi clear SpellBad
hi SpellBad cterm=underline
hi SpellBad ctermfg=red

"split navigation shortcuts
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"delete trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

set background=dark
colorscheme gruvbox-material

set splitbelow splitright "split puts window on right

set wildmode=longest,list,full "enable autocomplete

"remove autocommenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"shortcut to clear any highlighted text
nnoremap ;/ :noh<Enter>

"press space twice to jump to guide
"inoremap <Space><Space> <Esc>/<++><Enter>"_c4l
"vnoremap <Space><Space> <Esc>/<++><Enter>"_c4l
nnoremap <Space><Space> <Esc>/<++><Enter>"_c4l<Esc>:noh<Enter>a

nnoremap <Backspace><Backspace> <Esc>?<--><Enter>"_c4l<Esc>:noh<Enter>a

"tex macros
au BufNewFile,BufRead *.tex nnoremap ;b a\begin{}<Enter><Enter><--><Enter><Enter>\end{<++>}<Enter><Enter><++><Esc>6k$i
au BufNewFile,BufRead *.tex nnoremap ;n a\documentclass{}<Enter><Enter>\usepackage{graphicx}<Enter><Enter>\title{<++>}<Esc>:pu=strftime('%d/%m/%y')<Enter>i\date{<Esc>$a}<Enter>\author{Ray Garner}<Enter><Enter><++><Esc>8k$i
au BufNewFile,BufRead *.tex nnoremap ;up a\usepackage{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;s1 a\section{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;s2 a\subsection{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;s3 a\subsubsection{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;s4 a\subsubsubsection{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;p1 a\paragraph{}<Esc>
au BufNewFile,BufRead *.tex nnoremap ;p2 a\subparagraph{}<Esc>
au BufNewFile,BufRead *.tex nnoremap ;pi a\begin{figure}[h]<Enter>\centering<Enter>\includegraphics[width=0.8\textwidth]{img/}<Enter>\caption{<++>}<Enter>\end{figure}<Enter><Enter><++><Esc>4k$i

"html macros
au BufNewFile,BufRead *.html nnoremap ;n a<!DOCTYPE html><Enter><html><Enter><head><Enter><title></title><Enter><link rel="stylesheet" href="styles.css"><Enter><Backspace></head><Enter><Enter><body><Enter><++><Enter><Backspace></body><Enter><Backspace></html><Esc>7k3wa
au BufNewFile,BufRead *.html nnoremap ;p a<p></p><Enter><Enter><++><Esc>2ki
au BufNewFile,BufRead *.html nnoremap ;h1 a<h1></h1><Enter><Enter><++><Esc>2k02wa
au BufNewFile,BufRead *.html nnoremap ;h2 a<h2></h2><Enter><Enter><++><Esc>2k02wa
au BufNewFile,BufRead *.html nnoremap ;h3 a<h3></h3><Enter><Enter><++><Esc>2k02wa




"au BufNewFile,BufRead *.html nnoremap ;d a<div id="" class="<++>"><Enter><++><Enter></div><Enter><Enter><++><Esc>4k03w2li
"au BufNewFile,BufRead *.html nnoremap ;h1 a<h1></h1><Enter><Enter><++><Esc>2kf<i
"au BufNewFile,BufRead *.html nnoremap ;h2 a<h2></h2><Enter><Enter><++><Esc>2kf<i
"au BufNewFile,BufRead *.html nnoremap ;h3 a<h3></h3><Enter><Enter><++><Esc>2kf<i
"au BufNewFile,BufRead *.html nnoremap ;im a<img id="" class="<++>" src="<++"

"au BufNewFile,BufRead *.html nnoremap ;b a<b></b><Space><++><Esc>FbT>i
"au BufNewFile,BufRead *.html nnoremap ;it a<em></em><Space><++><Esc>FeT>i
"au BufNewFile,BufRead *.html nnoremap ;1 a<h1></h1><Enter><Enter><++><Esc>2kf<i
"au BufNewFile,BufRead *.html nnoremap ;2 a<h2></h2><Enter><Enter><++><Esc>2kf<i
"au BufNewFile,BufRead *.html nnoremap ;3 a<h3></h3><Enter><Enter><++><Esc>2kf<i
"au BufNewFile,BufRead *.html nnoremap ;p a<p></p><Enter><Enter><++><Esc>02kf>a
"au BufNewFile,BufRead *.html nnoremap ;a a<a<Space>href=""><++></a><Space><++><Esc>14hi
"au BufNewFile,BufRead *.html nnoremap ;e a<a<Space>target="_blank"<Space>href=""><++></a><Space><++><Esc>14hi
"au BufNewFile,BufRead *.html nnoremap ;ul a<ul><Enter><li></li><Enter></ul><Enter><Enter><++><Esc>03kf<i
"au BufNewFile,BufRead *.html nnoremap ;li a<Esc>o<li></li><Esc>F>a
"au BufNewFile,BufRead *.html nnoremap ;ol a<ol><Enter><li></li><Enter></ol><Enter><Enter><++><Esc>03kf<i
"au BufNewFile,BufRead *.html nnoremap ;im a<img src="" alt="<++>"><++><esc>Fcf"a
"au BufNewFile,BufRead *.html nnoremap ;td a<td></td><++><Esc>Fdcit
"au BufNewFile,BufRead *.html nnoremap ;tr a<tr></tr><Enter><++><Esc>kf<i
"au BufNewFile,BufRead *.html nnoremap ;th a<th></th><++><Esc>Fhcit
"au BufNewFile,BufRead *.html nnoremap ;tab a<table><Enter></table><Esc>O
"au BufNewFile,BufRead *.html nnoremap ;gr a<font color="green"></font><Esc>F>a
"au BufNewFile,BufRead *.html nnoremap ;rd a<font color="red"></font><Esc>F>a
"au BufNewFile,BufRead *.html nnoremap ;yl a<font color="yellow"></font><Esc>F>a
"au BufNewFile,BufRead *.html nnoremap ;dt a<dt></dt><Enter><dd><++></dd><Enter><++><esc>2kcit
"au BufNewFile,BufRead *.html nnoremap ;dl a<dl><Enter><Enter></dl><enter><enter><++><esc>3kcc
"au BufNewFile,BufRead *.html nnoremap ;<space> a&amp;<space>
"

