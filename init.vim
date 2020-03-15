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

"press space twice to jump to guide
"inoremap <Space><Space> <Esc>/<++><Enter>"_c4l
"vnoremap <Space><Space> <Esc>/<++><Enter>"_c4l
nnoremap <Space><Space> <Esc>/<++><Enter>"_c4l<Esc>:noh<Enter>a

"tex macros
au BufNewFile,BufRead *.tex nnoremap ;b a\begin{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;e a\end{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;n a\documentclass{}<Enter><Enter>\title{<++>}<Enter>\date{<++>}<Enter>\author{Ray Garner}<Enter><Enter><++><Esc>6k$i
au BufNewFile,BufRead *.tex nnoremap ;up a\usepackage{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;s1 a\section{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;s2 a\subsection{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;s3 a\subsubsection{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;s4 a\subsubsubsection{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;p1 a\paragraph{}<Esc>
au BufNewFile,BufRead *.tex nnoremap ;p2 a\subparagraph{}<Esc>
au BufNewFile,BufRead *.tex nnoremap ;pi a\begin{figure}[h]<Enter>\centering<Enter>\includegraphics[width=0.7\textwidth]{img/}<Enter>\caption{<++>}<Enter>\end{figure}<Enter><Enter><++><Esc>4k$i

"au BufNewFile,BufRead *.tex nnoremap ;fr a\begin{frame}<Enter>\frametitle{}<Enter><Enter><++><Enter><Enter>\end{frame}<Enter><Enter><++><Esc>6kf}i

"au BufNewFile,BufRead *.tex nnoremap ;fi a\begin{fitch}<Enter><Enter>\end{fitch}<Enter><Enter><++><Esc>3kA
"au BufNewFile,BufRead *.tex nnoremap ;exe a\begin{exe}<Enter>\ex<Space><Enter>\end{exe}<Enter><Enter><++><Esc>3kA
"au BufNewFile,BufRead *.tex nnoremap ;em a\emph{}<++><Esc>T{i
"au BufNewFile,BufRead *.tex nnoremap ;bf a\textbf{}<++><Esc>T{i
"au BufNewFile,BufRead *.tex vnoremap ; <ESC>`<i\{<ESC>`>2la}<ESC>?\\{<Enter>a
"au BufNewFile,BufRead *.tex nnoremap ;it a\textit{}<++><Esc>T{i
"au BufNewFile,BufRead *.tex nnoremap ;ct a\textcite{}<++><Esc>T{i
"au BufNewFile,BufRead *.tex nnoremap ;cp a\parencite{}<++><Esc>T{i
"au BufNewFile,BufRead *.tex nnoremap ;glos a{\gll<Space><++><Space>\\<Enter><++><Space>\\<Enter>\trans{``<++>''}}<Esc>2k2bcw
"au BufNewFile,BufRead *.tex nnoremap ;x a\begin{xlist}<Enter>\ex<Space><Enter>\end{xlist}<Esc>kA<Space>
"au BufNewFile,BufRead *.tex nnoremap ;ol a\begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
"au BufNewFile,BufRead *.tex nnoremap ;ul a\begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
"au BufNewFile,BufRead *.tex nnoremap ;li a<Enter>\item<Space>
"au BufNewFile,BufRead *.tex nnoremap ;ref a\ref{}<Space><++><Esc>T{i
"au BufNewFile,BufRead *.tex nnoremap ;tab a\begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
"au BufNewFile,BufRead *.tex nnoremap ;ot \abegin{tableau}<Enter>\inp{<++>}<Tab>\const{<++>}<Tab><++><Enter><++><Enter>\end{tableau}<Enter><Enter><++><Esc>5kA{}<Esc>i
"au BufNewFile,BufRead *.tex nnoremap ;can a\cand{}<Tab><++><Esc>T{i
"au BufNewFile,BufRead *.tex nnoremap ;con a\const{}<Tab><++><Esc>T{i
"au BufNewFile,BufRead *.tex nnoremap ;v a\vio{}<Tab><++><Esc>T{i
"au BufNewFile,BufRead *.tex nnoremap ;a a\href{}{<++>}<Space><++><Esc>2T{i
"au BufNewFile,BufRead *.tex nnoremap ;sc a\textsc{}<Space><++><Esc>T{i
"au BufNewFile,BufRead *.tex nnoremap ;chap a\chapter{}<Enter><Enter><++><Esc>2kf}i
"au BufNewFile,BufRead *.tex nnoremap ;sec a\section{}<Enter><Enter><++><Esc>2kf}i
"au BufNewFile,BufRead *.tex nnoremap ;ssec a\subsection{}<Enter><Enter><++><Esc>2kf}i
"au BufNewFile,BufRead *.tex nnoremap ;sssec a\subsubsection{}<Enter><Enter><++><Esc>2kf}i
"au BufNewFile,BufRead *.tex nnoremap ;st a<Esc>F{i*<Esc>f}i
"au BufNewFile,BufRead *.tex nnoremap ;beg a\begin{DELRN}<Enter><++><Enter>\end{DELRN}<Enter><Enter><++><Esc>4k0fR:MultipleCursorsFind<Space>DELRN<Enter>c
"au BufNewFile,BufRead *.tex nnoremap ;up a<Esc>/usepackage<Enter>o\usepackage{}<Esc>i
"au BufNewFile,BufRead *.tex nnoremap ;up a/usepackage<Enter>o\usepackage{}<Esc>i
"au BufNewFile,BufRead *.tex nnoremap ;tt a\texttt{}<Space><++><Esc>T{i
"au BufNewFile,BufRead *.tex nnoremap ;bt a{\blindtext}
"au BufNewFile,BufRead *.tex nnoremap ;nu a$\varnothing$
"au BufNewFile,BufRead *.tex nnoremap ;col a\begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter><++><Enter>\end{column}<Enter>\end{columns}<Esc>5kA
"au BufNewFile,BufRead *.tex nnoremap ;rn (\ref{})<++><Esc>F}i

"html macros
au BufNewFile,BufRead *.html nnoremap ;b a<b></b><Space><++><Esc>FbT>i
au BufNewFile,BufRead *.html nnoremap ;it a<em></em><Space><++><Esc>FeT>i
au BufNewFile,BufRead *.html nnoremap ;1 a<h1></h1><Enter><Enter><++><Esc>2kf<i
au BufNewFile,BufRead *.html nnoremap ;2 a<h2></h2><Enter><Enter><++><Esc>2kf<i
au BufNewFile,BufRead *.html nnoremap ;3 a<h3></h3><Enter><Enter><++><Esc>2kf<i
au BufNewFile,BufRead *.html nnoremap ;p a<p></p><Enter><Enter><++><Esc>02kf>a
au BufNewFile,BufRead *.html nnoremap ;a a<a<Space>href=""><++></a><Space><++><Esc>14hi
au BufNewFile,BufRead *.html nnoremap ;e a<a<Space>target="_blank"<Space>href=""><++></a><Space><++><Esc>14hi
au BufNewFile,BufRead *.html nnoremap ;ul a<ul><Enter><li></li><Enter></ul><Enter><Enter><++><Esc>03kf<i
au BufNewFile,BufRead *.html nnoremap ;li a<Esc>o<li></li><Esc>F>a
au BufNewFile,BufRead *.html nnoremap ;ol a<ol><Enter><li></li><Enter></ol><Enter><Enter><++><Esc>03kf<i
au BufNewFile,BufRead *.html nnoremap ;im a<img src="" alt="<++>"><++><esc>Fcf"a
au BufNewFile,BufRead *.html nnoremap ;td a<td></td><++><Esc>Fdcit
au BufNewFile,BufRead *.html nnoremap ;tr a<tr></tr><Enter><++><Esc>kf<i
au BufNewFile,BufRead *.html nnoremap ;th a<th></th><++><Esc>Fhcit
au BufNewFile,BufRead *.html nnoremap ;tab a<table><Enter></table><Esc>O
au BufNewFile,BufRead *.html nnoremap ;gr a<font color="green"></font><Esc>F>a
au BufNewFile,BufRead *.html nnoremap ;rd a<font color="red"></font><Esc>F>a
au BufNewFile,BufRead *.html nnoremap ;yl a<font color="yellow"></font><Esc>F>a
au BufNewFile,BufRead *.html nnoremap ;dt a<dt></dt><Enter><dd><++></dd><Enter><++><esc>2kcit
au BufNewFile,BufRead *.html nnoremap ;dl a<dl><Enter><Enter></dl><enter><enter><++><esc>3kcc
au BufNewFile,BufRead *.html nnoremap ;<space> a&amp;<space>


