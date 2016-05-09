"Syntax highlighting
filetype plugin on
syntax on
"Mouse cupport
set mouse=a
"Automatically move to next/prev line when reaching end/beginning of line
set whichwrap=h,l,b,<,>,[,]
"Tab stands for N spaces, indents size
set tabstop=4
set shiftwidth=4
"Display line numbers
set number
"Show matching brackets
set showmatch
set matchtime=0
"Highlight search matches
set hlsearch
"Incremental search
set incsearch
"Case insensitive search
set ignorecase
"If there is uppercase letter, case sensitive
set smartcase
"Keep indents when newline
set autoindent
"Statusline
set ruler
"Access X clipboard
set clipboard=unnamedplus,unnamed

"Different for GUI and terminal
"GUI
if has('gui_running')
	set guioptions-=t
	colorscheme dejavu-1
	set guifont=Liberation\ Mono\ 10
"Terminal
else
	colorscheme 256-grayvim
endif 
