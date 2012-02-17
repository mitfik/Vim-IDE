set bg=dark
set nocompatible		" niekompatybilny z VI => włącz bajery VIMa
set autoindent 		" zaczynanie nowej lini od pozycji kursora w popdzedniej lini
set smartindent
set nobackup			" nie trzymaj kopii zapasowych, używaj wersji
set pastetoggle=<F5> " przełączanie w tryb wklejania nie są uwzględniane wcięcia
set backspace=indent,eol,start
set viminfo='20,\"50		" read/write a .viminfo file, don't store more than 50 lines of registers
set history=50			" keep 50 lines of command line history
set ruler			" show the cursor position all the time
set showcmd			" display incomplete commands
set incsearch			" do incremental searching
set browsedir=buffer		" To get the File / Open dialog box to default to the current file's directory
set pastetoggle=<F11>		" przełączanie w tryb wklejania (nie będzie automatycznych wcięć, ...)
set nonumber			" nie wyświetlaj nr linii
setlocal number			" pierwszy odpalony bufor ma nrki
set wildmenu			" wyświetlaj linie z menu podczas dopełniania
set showmatch			" pokaz otwierający nawias gdy wpisze zamykający
set so=5			" przewijaj juz na 5 linii przed końcem
set statusline=%y[%{&ff}]\ \ ASCII=\%03.3b,HEX=\%02.2B\ %=%m%r%h%w\ %1*%F%*\ %l:%v\ (%p%%)
set laststatus=2		" zawsze pokazuj linię statusu
set fo=tcrqn			" opcje wklejania (jak maja być tworzone wcięcia itp.)
set hidden			" nie wymagaj zapisu gdy przechodzisz do nowego bufora
set expandtab   " zamiana tab na spacje
set tabstop=2 			" ustawienie wielkości taba na 2 spacje
set tags+=./stl_tags		" tip 931
set foldtext=MojFoldText()	" tekst po zwinięciu zakładki
set foldminlines=3		" minimum 3 linie aby powstał fold
"set wildmode=longest:full	" dopełniaj jak w BASHu
"set cpoptions="A"
"set keymodel=startsel,stopsel	" zaznaczanie z shiftem
set spelllang=pl
let php_sql_query = 1		" podkreślanie składni SQL w PHP
let php_htmlInStrings = 1	" podkreślanie składni HTML w PHP
let python_highlight_all = 1


behave xterm

if &t_Co > 2 || has("gui_running")
	syntax on		" kolorowanie składni
	set hlsearch		" zaznaczanie szukanego tekstu
endif
if has("gui_running")
	set foldcolumn=2	" szerokość kolumny z zakładkami
	set guioptions=abegimrLtT	" m.in: włącz poziomy scrollbar
	set nowrap
	set cursorline		" zaznacz linię z kursorem
	"set cursorcolumn	" zaznacz kolumnę z kursorem
else
	"set ts=4		" jak odpalony w konsoli to znaki tabulacji o polowe mniejsze
endif

" automatyczne rozpoznawanie typu pliku, ladowanie specyficznego, dla danego typu, pluginu (ftplugin.vim, indent.vim):


" latex 

filetype plugin on " invoke latex-suite when you open a tex file
set shellslash

set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
filetype indent on
:nmap <C-f> :FindFile<CR>

" surround mapping
"
let g:surround_45 = "<% \r %>"
let g:surround_61 = "<%= \r %>"



set nobackup
set nowritebackup
set noswapfile



autocmd BufReadPost *
 \ if line("'\"") > 1 && line("'\"") <= line("$") |
 \  exe "normal! g`\"" |
 \ endif

" latex config

let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_ViewRule_pdf='xpdf'

filetype plugin on
set ofu=syntaxcomplete#Complete
