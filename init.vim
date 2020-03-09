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

"inoremap <Space><Space> <Esc>/<++><Enter>"_c4l
"vnoremap <Space><Space> <Esc>/<++><Enter>"_c4l
nnoremap <Space><Space> <Esc>/<++><Enter>"_c4l


"tex
au BufNewFile,BufRead *.tex nnoremap ;fr i\begin{frame}<Enter>\frametitle{}<Enter><Enter><++><Enter><Enter>\end{frame}<Enter><Enter><++><Esc>6kf}
au BufNewFile,BufRead *.tex nnoremap ;fi \begin{fitch}<Enter><Enter>\end{fitch}<Enter><Enter><++><Esc>3kA
au BufNewFile,BufRead *.tex nnoremap ;exe \begin{exe}<Enter>\ex<Space><Enter>\end{exe}<Enter><Enter><++><Esc>3kA
au BufNewFile,BufRead *.tex nnoremap ;em \emph{}<++><Esc>T{i
au BufNewFile,BufRead *.tex nnoremap ;bf \textbf{}<++><Esc>T{i
au BufNewFile,BufRead *.tex vnoremap ; <ESC>`<i\{<ESC>`>2la}<ESC>?\\{<Enter>a
au BufNewFile,BufRead *.tex nnoremap ;it \textit{}<++><Esc>T{i
au BufNewFile,BufRead *.tex nnoremap ;ct \textcite{}<++><Esc>T{i
au BufNewFile,BufRead *.tex nnoremap ;cp \parencite{}<++><Esc>T{i
au BufNewFile,BufRead *.tex nnoremap ;glos {\gll<Space><++><Space>\\<Enter><++><Space>\\<Enter>\trans{``<++>''}}<Esc>2k2bcw
au BufNewFile,BufRead *.tex nnoremap ;x \begin{xlist}<Enter>\ex<Space><Enter>\end{xlist}<Esc>kA<Space>
au BufNewFile,BufRead *.tex nnoremap ;ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
au BufNewFile,BufRead *.tex nnoremap ;ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
au BufNewFile,BufRead *.tex nnoremap ;li <Enter>\item<Space>
au BufNewFile,BufRead *.tex nnoremap ;ref \ref{}<Space><++><Esc>T{i
au BufNewFile,BufRead *.tex nnoremap ;tab \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;ot \begin{tableau}<Enter>\inp{<++>}<Tab>\const{<++>}<Tab><++><Enter><++><Enter>\end{tableau}<Enter><Enter><++><Esc>5kA{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;can \cand{}<Tab><++><Esc>T{i
au BufNewFile,BufRead *.tex nnoremap ;con \const{}<Tab><++><Esc>T{i
au BufNewFile,BufRead *.tex nnoremap ;v \vio{}<Tab><++><Esc>T{i
au BufNewFile,BufRead *.tex nnoremap ;a \href{}{<++>}<Space><++><Esc>2T{i
au BufNewFile,BufRead *.tex nnoremap ;sc \textsc{}<Space><++><Esc>T{i
au BufNewFile,BufRead *.tex nnoremap ;chap \chapter{}<Enter><Enter><++><Esc>2kf}i
au BufNewFile,BufRead *.tex nnoremap ;sec \section{}<Enter><Enter><++><Esc>2kf}i
au BufNewFile,BufRead *.tex nnoremap ;ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
au BufNewFile,BufRead *.tex nnoremap ;sssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
au BufNewFile,BufRead *.tex nnoremap ;st <Esc>F{i*<Esc>f}i
au BufNewFile,BufRead *.tex nnoremap ;beg \begin{DELRN}<Enter><++><Enter>\end{DELRN}<Enter><Enter><++><Esc>4k0fR:MultipleCursorsFind<Space>DELRN<Enter>c
au BufNewFile,BufRead *.tex nnoremap ;up <Esc>/usepackage<Enter>o\usepackage{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;up /usepackage<Enter>o\usepackage{}<Esc>i
au BufNewFile,BufRead *.tex nnoremap ;tt \texttt{}<Space><++><Esc>T{i
au BufNewFile,BufRead *.tex nnoremap ;bt {\blindtext}
au BufNewFile,BufRead *.tex nnoremap ;nu $\varnothing$
au BufNewFile,BufRead *.tex nnoremap ;col \begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter><++><Enter>\end{column}<Enter>\end{columns}<Esc>5kA
au BufNewFile,BufRead *.tex nnoremap ;rn (\ref{})<++><Esc>F}i

"html
