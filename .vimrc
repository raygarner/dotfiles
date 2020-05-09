filetype on
set number
syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set clipboard=unnamedplus
set autoindent
set spelllang=en_gb

autocmd FileType make setlocal noexpandtab

let &t_EI = "\<Esc>[ q"  " default cursor (usually blinking block) otherwise
let &t_SR = "\<Esc>[3 q"  " blinking underline in replace mode
let &t_SI = "\<Esc>[5 q"  " blinking I-beam in insert mode

"remove delay when pressing escape
set timeoutlen=1000 ttimeoutlen=0

"copy and pasting from global clipboard
vnoremap <C-c> "+y
map <C-p> "+p
"paste from surf
map <C-a> "*p

"remember position in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

filetype detect
au BufNewFile,BufRead *.ms,*.me,*.mom,*.man set filetype=groff
au FileType groff set spell
au BufNewFile,BufRead *.tex set spell
au BufNewFile,BufRead *.md set spell

"underline spelling errors instead of highlight
hi clear SpellBad
hi SpellBad cterm=underline
hi SpellBad ctermfg=red

hi clear SpellCap
hi SpellCap cterm=underline
hi SpellCap ctermfg=blue

hi clear SpellRare
hi SpellRare cterm=underline
hi SpellRare ctermfg=green

hi clear SpellLocal
hi SpellLocal cterm=underline
hi SpellLocal ctermfg=yellow


"split navigation shortcuts
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"delete trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

"set background=dark
"colorscheme gruvbox-material

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

nnoremap ;sc a#!/bin/sh<Ener><Esc>:w<Enter>:e<Enter>i
nnoremap ;r :w<Enter>:e<Enter>

"tex macros
au BufNewFile,BufRead *.tex nnoremap ;b a\begin{}<Enter><Enter><--><Enter><Enter>\end{<++>}<Enter><Enter><++><Esc>6k$ba
"au BufNewFile,BufRead *.tex nnoremap ;n a\documentclass{article}<Enter><Enter>\usepackage[backend=biber]{biblatex}<Enter>\addbibresource{/home/ray/Documents/bib/uni.bib}<Enter><Enter>\usepackage{graphicx}<Enter>\usepackage[english]{babel}<Enter>\usepackage{blindtext}<Enter>\usepackage[margin=2cm]{geometry}<Enter>\usepackage{listings}<Enter>\lstset{<Enter><Tab>basicstyle=\normalsize\ttfamily,<Enter>columns=flexible,<Enter>breaklines=true<Enter><Backspace>}<Enter><Enter>\tolerance=1<Enter>\emergencystretch=\maxdimen<Enter>\hyphenpenalty=10000<Enter>\hbadness=10000<Enter><Enter>\title{}<Esc>:pu=strftime('%d/%m/%y')<Enter>i\date{<Esc>$a}<Enter>\author{Ray Garner}<Enter><Enter>\begin{document}<Enter><Enter><++><Enter><Enter>\newpage<Enter>\lstinputlisting{wc.txt}<Enter><Enter>\end{document}<Esc>:w<Enter>:e<Enter>11k2wa
au BufNewFile,BufRead *.tex nnoremap ;up a\usepackage{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;s1 a\section{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;s2 a\subsection{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;s3 a\subsubsection{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;s4 a\subsubsubsection{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;p1 a\paragraph{}<Esc>
au BufNewFile,BufRead *.tex nnoremap ;p2 a\subparagraph{}<Esc>
au BufNewFile,BufRead *.tex nnoremap ;pi a\begin{figure}[h]<Enter>\centering<Enter>\includegraphics[width=0.8\textwidth]{img/}<Enter>\caption{<++>}<Enter>\end{figure}<Enter><Enter><++><Esc>4k$i
"au BufNewFile,BufRead *.tex nnoremap ;vb a\verb!!<++><Esc>ba
au BufNewFile,BufRead *.tex nnoremap ;tx a\texttt{} <++><Esc>2ba
au BufNewFile,BufRead *.tex nnoremap ;sr a\lstinputlisting{src/}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;rn a\renewcommand{}{<Enter><++><Enter>}<Enter><Enter><++><Esc>4k$hi
au BufNewFile,BufRead *.tex nnoremap ;tf a\titleformat{}<Enter>{}<Enter>{}<Enter>{0em}<Enter>{}[]<Enter><Enter><++><Esc>6k$i
au BufNewFile,BufRead *.tex nnoremap ;ld a\textbf{} <++><Esc>2ba
au BufNewFile,BufRead *.tex nnoremap ;tc a\textcite{} <++><Esc>2ba
au BufNewFile,BufRead *.tex nnoremap ;c a\cite{} <++><Esc>2ba
au BufNewFile,BufRead *.tex nnoremap ;i a\emph{} <++><Esc>2ba

"bib macros
au BufNewFile,BufRead *.bib nnoremap ;b a@book{,<Enter><Tab>title = "<++>",<Enter>author = "<++>",<Enter>year = "<++>",<Enter>publisher = "<++>",<Enter><++><Enter><Backspace>}<Enter><Enter><++><Esc>8kwa
au BufNewFile,BufRead *.bib nnoremap ;a a@article{,<Enter><Tab>title = "<++>",<Enter>author = "<++>",<Enter>year = "<++>",<Enter>journal = "<++>",<Enter><++><Enter><Backspace>}<Enter><Enter><++><Esc>8kwa
au BufNewFile,BufRead *.bib nnoremap ;a a@phdthesis{,<Enter><Tab>title = "<++>",<Enter>author = "<++>",<Enter>year = "<++>",<Enter>school = "<++>",<Enter><++><Enter><Backspace>}<Enter><Enter><++><Esc>8kwa
au BufNewFile,BufRead *.bib nnoremap ;a a@mastersthesis{,<Enter><Tab>title = "<++>",<Enter>author = "<++>",<Enter>year = "<++>",<Enter>school = "<++>",<Enter><++><Enter><Backspace>}<Enter><Enter><++><Esc>8kwa

"html macros
au BufNewFile,BufRead *.html nnoremap ;n a<!DOCTYPE html><Enter><html><Enter><Tab><head><Enter><Tab><title></title><Enter><link rel="stylesheet" href="styles.css"><Enter><Backspace></head><Enter><Enter><body><Enter><Tab><++><Enter><Backspace></body><Enter><Backspace></html><Esc>7k3wa
au BufNewFile,BufRead *.html nnoremap ;p a<p></p><Esc>2ba
au BufNewFile,BufRead *.html nnoremap ;h1 a<h1></h1><Esc>2ba
au BufNewFile,BufRead *.html nnoremap ;h2 a<h2></h2><Esc>2ba
au BufNewFile,BufRead *.html nnoremap ;h3 a<h3></h3><Esc>2ba
au BufNewFile,BufRead *.html nnoremap ;d a<div><Enter><Tab><++><Enter><Backspace></div><Enter><Enter><++><Esc>4ka<Space>
au BufNewFile,BufRead *.html nnoremap ;br a<br><Enter>
au BufNewFile,BufRead *.html nnoremap ;hr a<hr><Enter>
au BufNewFile,BufRead *.html nnoremap ;bu a<button><++></button><Enter><Enter><++><Esc>2kea<Space>
au BufNewFile,BufRead *.html nnoremap ;a a<a href=""><++></a><Enter><Enter><++><Esc>2kwla
au BufNewFile,BufRead *.html nnoremap ;im a<img src="img/" <++>><Enter><Enter><++><Esc>2k4wa
au BufNewFile,BufRead *.html nnoremap ;ul a<ul><Enter><Enter></ul><Enter><Enter><++><Esc>4ko<Tab>
au BufNewFile,BufRead *.html nnoremap ;ol a<ol><Enter><Enter></ol><Enter><Enter><++><Esc>4ko<Tab>
au BufNewFile,BufRead *.html nnoremap ;li a<li></li><Enter><++><Esc>ka

"c macros
au BufNewFile,BufRead *.c nnoremap ;n a#include <stdio.h><Enter><Enter>int<Space>main(int<Space>argc,<Space>char<Space>**argv)<Enter>{<Enter><Enter><Tab>return<Space>0;<Enter><Backspace>}<Esc>2ki<Tab>
au BufNewFile,BufRead *.c nnoremap ;fl afor (; <++>; <++>) {<Enter><Tab><++><Enter><Enter><Backspace>}<Enter><Enter><++><Esc>5kwa
au BufNewFile,BufRead *.c nnoremap ;wl awhile () {<Enter><Tab><++><Enter><Enter><Backspace>}<Enter><Enter><++><Esc>5kwa
au BufNewFile,BufRead *.c nnoremap ;dw ado {<Enter><Tab><--><Enter><Enter><Backspace>} while ();<Enter><Enter><++><Esc>2kwa
au BufNewFile,BufRead *.c nnoremap ;if aif () {<Enter><Tab><++><Enter><Enter><Backspace>} <++><Enter><Enter><++><Esc>5ka
au BufNewFile,BufRead *.c nnoremap ;el aelse {<Enter><Tab><Enter><Backspace>} <++><Enter><Enter><++><Esc>3ki
au BufNewFile,BufRead *.c nnoremap ;ei aelse if () {<Enter><Tab><++><Enter><Enter><Backspace>} <++><Enter><Enter><++><Esc>5k2wa
au BufNewFile,BufRead *.c nnoremap ;sw aswitch() {<Enter>case <++> :<Enter><Tab><++><Enter><Enter><Backspace>case <++> :<Enter><Tab><++><Enter><Enter><Backspace>default :<Enter><Tab><++><Enter><Backspace>}<Enter><Enter><++><Esc>11kwa
au BufNewFile,BufRead *.c nnoremap ;fu a{<Enter><Tab><--><Enter><Enter>return ;<Enter><Backspace>}<Esc>k2wi
au BufNewFile,BufRead *.c nnoremap ;in a#include ".h"<Enter><++><Esc>kwa
au BufNewFile,BufRead *.c nnoremap ;il a#include <.h><Enter><++><Esc>kwa
au BufNewFile,BufRead *.c nnoremap ;st atypedef struct  {<Enter><Tab><++><Enter><Enter><Backspace>} <++>;<Enter><Enter><++><Esc>5k2whi
au BufNewFile,BufRead *.c nnoremap ;en atypedef enum  {<Enter><Tab><++><Enter><Enter><Backspace>} <++>;<Enter><Enter><++><Esc>5k2whi
au BufNewFile,BufRead *.c nnoremap ;un atypedef union  {<Enter><Tab><++><Enter><Enter><Backspace>} <++>;<Enter><Enter><++><Esc>5k2whi
au BufNewFile,BufRead *.c nnoremap ;cm 0i/* <Esc>$a */<Esc>
au BufNewFile,BufRead *.c nnoremap ;uc 03x$2h3x


"vimscript macros
"keypress keyword shortcuts
au BufNewFile,BufRead *.vim,.vimrc nnoremap ;<Space> a<\Space><Esc>bhxwa
au BufNewFile,BufRead *.vim,.vimrc nnoremap ;<Tab> a<\Tab><Esc>bhxwa
au BufNewFile,BufRead *.vim,.vimrc nnoremap ;<Backspace> a<\Backspace><Esc>bhxwa
au BufNewFile,BufRead *.vim,.vimrc nnoremap ;<Enter> a<\Enter><Esc>bhxwa
au BufNewFile,BufRead *.vim,.vimrc nnoremap ;e a<\Esc><Esc>bhxwa
au BufNewFile,BufRead *.vim,.vimrc nnoremap ;kb aau BufNewFile,BufRead *. nnoremap ;<++><Esc>3bla

"plan file macros
au BufNewFile,BufRead .plan inoremap <Enter> <Enter>*<Space>
au BufNewFile,BufRead .plan nnoremap o o*<Space>
au BufNewFile,BufRead .plan nnoremap O O*<Space>
au BufNewFile,BufRead .plan nnoremap ;n ggvG$c*<Space>

"shell script macros
au BufNewFile,BufRead *.sh nnoremap ;if aif [ ]; then<Enter><Tab><++><Enter><Enter><Backspace>fi<Enter><Enter><++><Esc>5k$2bi
au BufNewFile,BufRead *.sh nnoremap ;el aelif [ ]; then<Enter><Tab><++><Esc>k$2bi
au BufNewFile,BufRead *.sh nnoremap ;wl awhile [ ]; do<Enter><Tab><++><Enter><Enter><Backspace>done<Esc>3kwa<Space>
au BufNewFile,BufRead *.sh nnoremap ;fl afor in <++>; do<Enter><Tab><++><Enter><Enter><Backspace>done<Esc>4k0ea<Space>
au BufNewFile,BufRead *.sh nnoremap ;sw acase  in<Enter><Tab><++>)<Enter><Tab><++><Enter>;;<Enter><Backspace><++>)<Enter><Tab><++><Enter>;;<Enter><Backspace><Enter>*)<Enter><Backspace>esac<Esc>9kla
au BufNewFile,BufRead *.sh nnoremap ;ca a)<Enter><Tab><++><Enter><Enter>;;<Enter><Backspace><++><Esc>4ki

"cursor fix to stop vi mode in shell messing vim cursor up
normal i
