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
au BufNewFile,BufRead *.tex nnoremap ;n a\documentclass{}<Enter><Enter>\usepackage{graphicx}<Enter>\usepackage[english]{babel}<Enter>\usepackage{blindtext}<Enter>\usepackage{listings}<Enter>\lstset{<Enter><Tab>basicstyle=\small\ttfamily,<Enter>columns=flexible,<Enter>breaklines=true<Enter><Backspace>}<Enter><Enter>\title{<++>}<Esc>:pu=strftime('%d/%m/%y')<Enter>i\date{<Esc>$a}<Enter>\author{Ray Garner}<Enter><Enter><++><Esc>16k$i
au BufNewFile,BufRead *.tex nnoremap ;up a\usepackage{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;s1 a\section{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;s2 a\subsection{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;s3 a\subsubsection{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;s4 a\subsubsubsection{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;p1 a\paragraph{}<Esc>
au BufNewFile,BufRead *.tex nnoremap ;p2 a\subparagraph{}<Esc>
au BufNewFile,BufRead *.tex nnoremap ;pi a\begin{figure}[h]<Enter>\centering<Enter>\includegraphics[width=0.8\textwidth]{img/}<Enter>\caption{<++>}<Enter>\end{figure}<Enter><Enter><++><Esc>4k$i
au BufNewFile,BufRead *.tex nnoremap ;vb a\verb!!<++><Esc>ba

"html macros
au BufNewFile,BufRead *.html nnoremap ;n a<!DOCTYPE html><Enter><html><Enter><head><Enter><title></title><Enter><link rel="stylesheet" href="styles.css"><Enter><Backspace></head><Enter><Enter><body><Enter><++><Enter><Backspace></body><Enter><Backspace></html><Esc>7k3wa
au BufNewFile,BufRead *.html nnoremap ;p a<p></p><Enter><Enter><++><Esc>2ki
au BufNewFile,BufRead *.html nnoremap ;h1 a<h1></h1><Enter><Enter><++><Esc>2k02wa
au BufNewFile,BufRead *.html nnoremap ;h2 a<h2></h2><Enter><Enter><++><Esc>2k02wa
au BufNewFile,BufRead *.html nnoremap ;h3 a<h3></h3><Enter><Enter><++><Esc>2k02wa
au BufNewFile,BufRead *.html nnoremap ;d a<div><++></div><Enter><Enter><++><Esc>2ka<Space>
au BufNewFile,BufRead *.html nnoremap ;br a<br><Enter>
au BufNewFile,BufRead *.html nnoremap ;hr a<hr><Enter>
au BufNewFile,BufRead *.html nnoremap ;bu a<button><++></button><Enter><Enter><++><Esc>2kea<Space>
au BufNewFile,BufRead *.html nnoremap ;a a<a href=""><++></a><Enter><Enter><++><Esc>2kwla
au BufNewFile,BufRead *.html nnoremap ;im a<img src="img/" <++>><Enter><Enter><++><Esc>2k4wa
au BufNewFile,BufRead *.html nnoremap ;ul a<ul><Enter><Backspace></ul><Enter><Enter><++><Esc>2k2bi
au BufNewFile,BufRead *.html nnoremap ;ol a<ol><Enter><Backspace></ol><Enter><Enter><++><Esc>2k2bi
au BufNewFile,BufRead *.html nnoremap ;li a<li></li><++><Esc>3ba


"c macros
au BufNewFile,BufRead *.c nnoremap ;n a#include <stdio.h><Enter><Enter>int<Space>main(int<Space>argc,<Space>char<Space>**argv)<Enter>{<Enter><Enter>return<Space>0;<Enter><Backspace>}<Esc>2ki<Tab>
"for
"while
"do while
"if
"switch
"include file
"include library
"struct
"shorthand if


"vimscript macros
"keypress keyword shortcuts
au BufNewFile,BufRead *.vim nnoremap ;<Space> a<\Space><Esc>bhxwa
au BufNewFile,BufRead *.vim nnoremap ;<Tab> a<\Tab><Esc>bhxwa
au BufNewFile,BufRead *.vim nnoremap ;<Backspace> a<\Backspace><Esc>bhxwa
au BufNewFile,BufRead *.vim nnoremap ;<Enter> a<\Enter><Esc>bhxwa
au BufNewFile,BufRead *.vim nnoremap ;e a<\Esc><Esc>bhxwa
au BufNewFile,BufRead *.vim nnoremap ;kb aau BufNewFile,BufRead *. nnoremap ;<++><Esc>3bla


"shell script macros

