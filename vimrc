" MAIN CUSTOMIZATION FILE
" Enable loading filetype and indentation plugins
filetype plugin on

" Turn syntax highlighting on
syntax on
set nu
"au Syntax php   source /usr/share/vim/vim61/syntax/php.vim
"au Syntax tpl   source /usr/share/vim/vim61/syntax/html.vim
"let php_sql_query = 1
"let php_baselib = 1
"let php_oldStyle = 1

" Use smart indentation

" Write contents of the file, if it has been modified, on buffer exit
set autowrite


"autoload _vimrc
"autocmd! bufwritepost .vimrc source ~/.vimrc

" Allow backspacing over everything
set hidden

" Insert mode completion options
" set completeopt=menu,longest,preview
"c the default buffer encoding
" set enc=gb2312
"set enc=utf-8

" encoding detection
" set fencs=gb2312,utf-8,big5,utf-16
" set fencs=utf-8
"set fencs=utf-8,gbk,gb2312
set fileencodings=utf-8,gbk,gb2312,gb18030
set fileencoding=utf-8
set termencoding=utf-8
set encoding=utf-8

" Remember up to 100 'colon' commmands and search patterns
set history=100

" Enable incremental search
set incsearch

" Always show status line, even for one window
set laststatus=2

" Jump to matching bracket for 2/10th of a second (works with showmatch)
set matchtime=2

" Don't highlight results of a search
set hlsearch

" Enable CTRL-A/CTRL-X to work on octal and hex numbers, as well as characters
set nrformats=octal,hex,alpha

" Use F10 to toggle 'paste' mode
"set pastetoggle=<F10>

" Show line, column number, and relative position within a file in the status line
set ruler

" Scroll when cursor gets within 3 characters of top/bottom edge
set scrolloff=3


"When .vimrc is edited, reload it 
autocmd! bufwritepost .vimrc source ~/.vimrc

set shiftround

" Show (partial) commands (or size of selection in Visual mode) in the status line
set showcmd

" When a bracket is inserted, briefly jump to a matching one
set showmatch

" Don't request terminal version string (for xterm)
set t_RV=

set tabstop=4
set softtabstop=4
set shiftwidth=4
"Use spaces for all tabs
set expandtab

" set textwidth=100

"highlight some column(colorcolumn)
"auto filetype c,php,sh setl cc=70

" Write swap file to disk after every 50 characters
set updatecount=50

" Remember things between sessions
"
" '20  - remember marks for 20 previous files
" "50 - save 50 lines for each register
" :20  - remember 20 items in command-line history 
" %    - remember the buffer list (if vim started without a file arg)
" n    - set name of viminfo file
set viminfo='20,\"50,:20,%,n~/.viminfo

" Use menu to show command-line completion (in 'full' case)
set wildmenu

" Set command-line completion mode:
"   - on first <Tab>, when more than one match, list all matches and complete
"     the longest common  string
"   - on second <Tab>, complete the next full match and show menu
set wildmode=list:longest,full

" Go back to the position the cursor was on the last time this file was edited
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")|execute("normal `\"")|endif

" Fix my <Backspace> key (in Mac OS X Terminal)
" set t_kb
" fixdel

" Avoid loading MatchParen plugin
let loaded_matchparen = 1

" netRW: Open files in a split window
let g:netrw_browse_split = 1
