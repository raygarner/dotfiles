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

"remove autocommenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"press space twice to jump to guide
"inoremap <Space><Space> <Esc>/<++><Enter>"_c4l
"vnoremap <Space><Space> <Esc>/<++><Enter>"_c4l
nnoremap <Space><Space> <Esc>/<++><Enter>"_c4l


"tex macros
au BufNewFile,BufRead *.tex nnoremap ;fr i\begin{frame}<Enter>\frametitle{}<Enter><Enter><++><Enter><Enter>\end{frame}<Enter><Enter><++><Esc>6kf}i
au BufNewFile,BufRead *.tex nnoremap ;fi i\begin{fitch}<Enter><Enter>\end{fitch}<Enter><Enter><++><Esc>3kA
au BufNewFile,BufRead *.tex nnoremap ;exe i\begin{exe}<Enter>\ex<Space><Enter>\end{exe}<Enter><Enter><++><Esc>3kA
au BufNewFile,BufRead *.tex nnoremap ;em i\emph{}<++><Esc>T{i
au BufNewFile,BufRead *.tex nnoremap ;bf i\textbf{}<++><Esc>T{i
au BufNewFile,BufRead *.tex vnoremap ; <ESC>`<i\{<ESC>`>2la}<ESC>?\\{<Enter>a
au BufNewFile,BufRead *.tex nnoremap ;it i\textit{}<++><Esc>T{i
au BufNewFile,BufRead *.tex nnoremap ;ct i\textcite{}<++><Esc>T{i
au BufNewFile,BufRead *.tex nnoremap ;cp i\parencite{}<++><Esc>T{i
au BufNewFile,BufRead *.tex nnoremap ;glos i{\gll<Space><++><Space>\\<Enter><++><Space>\\<Enter>\trans{``<++>''}}<Esc>2k2bcw
au BufNewFile,BufRead *.tex nnoremap ;x i\begin{xlist}<Enter>\ex<Space><Enter>\end{xlist}<Esc>kA<Space>
au BufNewFile,BufRead *.tex nnoremap ;ol i\begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
au BufNewFile,BufRead *.tex nnoremap ;ul i\begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
au BufNewFile,BufRead *.tex nnoremap ;li i<Enter>\item<Space>
au BufNewFile,BufRead *.tex nnoremap ;ref i\ref{}<Space><++><Esc>T{i
au BufNewFile,BufRead *.tex nnoremap ;tab i\begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;ot \ibegin{tableau}<Enter>\inp{<++>}<Tab>\const{<++>}<Tab><++><Enter><++><Enter>\end{tableau}<Enter><Enter><++><Esc>5kA{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;can i\cand{}<Tab><++><Esc>T{i
au BufNewFile,BufRead *.tex nnoremap ;con i\const{}<Tab><++><Esc>T{i
au BufNewFile,BufRead *.tex nnoremap ;v i\vio{}<Tab><++><Esc>T{i
au BufNewFile,BufRead *.tex nnoremap ;a i\href{}{<++>}<Space><++><Esc>2T{i
au BufNewFile,BufRead *.tex nnoremap ;sc i\textsc{}<Space><++><Esc>T{i
au BufNewFile,BufRead *.tex nnoremap ;chap i\chapter{}<Enter><Enter><++><Esc>2kf}i
au BufNewFile,BufRead *.tex nnoremap ;sec i\section{}<Enter><Enter><++><Esc>2kf}i
au BufNewFile,BufRead *.tex nnoremap ;ssec i\subsection{}<Enter><Enter><++><Esc>2kf}i
au BufNewFile,BufRead *.tex nnoremap ;sssec i\subsubsection{}<Enter><Enter><++><Esc>2kf}i
au BufNewFile,BufRead *.tex nnoremap ;st i<Esc>F{i*<Esc>f}i
au BufNewFile,BufRead *.tex nnoremap ;beg i\begin{DELRN}<Enter><++><Enter>\end{DELRN}<Enter><Enter><++><Esc>4k0fR:MultipleCursorsFind<Space>DELRN<Enter>c
au BufNewFile,BufRead *.tex nnoremap ;up i<Esc>/usepackage<Enter>o\usepackage{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;up i/usepackage<Enter>o\usepackage{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;tt i\texttt{}<Space><++><Esc>T{i
au BufNewFile,BufRead *.tex nnoremap ;bt i{\blindtext}
au BufNewFile,BufRead *.tex nnoremap ;nu i$\varnothing$
au BufNewFile,BufRead *.tex nnoremap ;col i\begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter><++><Enter>\end{column}<Enter>\end{columns}<Esc>5kA
au BufNewFile,BufRead *.tex nnoremap ;rn (\ref{})<++><Esc>F}i

"html macros
au BufNewFile,BufRead *.html nnoremap ;b i<b></b><Space><++><Esc>FbT>i
au BufNewFile,BufRead *.html nnoremap ;it i<em></em><Space><++><Esc>FeT>i
au BufNewFile,BufRead *.html nnoremap ;1 i<h1></h1><Enter><Enter><++><Esc>2kf<i
au BufNewFile,BufRead *.html nnoremap ;2 i<h2></h2><Enter><Enter><++><Esc>2kf<i
au BufNewFile,BufRead *.html nnoremap ;3 i<h3></h3><Enter><Enter><++><Esc>2kf<i
au BufNewFile,BufRead *.html nnoremap ;p i<p></p><Enter><Enter><++><Esc>02kf>a
au BufNewFile,BufRead *.html nnoremap ;a i<a<Space>href=""><++></a><Space><++><Esc>14hi
au BufNewFile,BufRead *.html nnoremap ;e i<a<Space>target="_blank"<Space>href=""><++></a><Space><++><Esc>14hi
au BufNewFile,BufRead *.html nnoremap ;ul i<ul><Enter><li></li><Enter></ul><Enter><Enter><++><Esc>03kf<i
au BufNewFile,BufRead *.html nnoremap ;li i<Esc>o<li></li><Esc>F>a
au BufNewFile,BufRead *.html nnoremap ;ol i<ol><Enter><li></li><Enter></ol><Enter><Enter><++><Esc>03kf<i
au BufNewFile,BufRead *.html nnoremap ;im i<img src="" alt="<++>"><++><esc>Fcf"a
au BufNewFile,BufRead *.html nnoremap ;td i<td></td><++><Esc>Fdcit
au BufNewFile,BufRead *.html nnoremap ;tr i<tr></tr><Enter><++><Esc>kf<i
au BufNewFile,BufRead *.html nnoremap ;th i<th></th><++><Esc>Fhcit
au BufNewFile,BufRead *.html nnoremap ;tab i<table><Enter></table><Esc>O
au BufNewFile,BufRead *.html nnoremap ;gr i<font color="green"></font><Esc>F>a
au BufNewFile,BufRead *.html nnoremap ;rd i<font color="red"></font><Esc>F>a
au BufNewFile,BufRead *.html nnoremap ;yl i<font color="yellow"></font><Esc>F>a
au BufNewFile,BufRead *.html nnoremap ;dt i<dt></dt><Enter><dd><++></dd><Enter><++><esc>2kcit
au BufNewFile,BufRead *.html nnoremap ;dl i<dl><Enter><Enter></dl><enter><enter><++><esc>3kcc
au BufNewFile,BufRead *.html nnoremap ;<space> i&amp;<space>


