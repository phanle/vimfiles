" ----------------------------------------
" Regular Vim Configuration (No Plugins Needed)
" ----------------------------------------

" Config {{{
if has('persistent_undo')
  set undofile
  set undodir=~/.vim/.undo
endif
" }}}

" Backups {{{
set swapfile                    " Keep swapfiles
set directory=~/.vim-tmp,~/tmp,/var/tmp,/tmp
set backupdir=~/.vim-tmp,~/tmp,/var/tmp,/tmp
" }}}

" UI {{{
set number         " Line numbers on
set nowrap         " Line wrapping off
set cmdheight=2    " Make the command area two lines high
set numberwidth=5
set encoding=utf-8
set guioptions=acg
set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175
set cursorline
set ttyfast
set lazyredraw
if exists('+colorcolumn')
  set colorcolumn=150 " Color the 80th column differently
endif
au VimResized * exe "normal! \<c-w>="
" }}}

" Behaviors {{{
filetype plugin indent on  " Automatically detect file types. (must turn on after Vundle)
set wildmode=list:longest " use emacs-style tab completion when selecting files, etc
set hidden             " Change buffer - without saving
set autowriteall       " Writes on make/shell commands
set foldmethod=syntax
set foldlevel=20
set formatoptions=crql
set tags=./tags;/,tags;/
nnoremap K <nop>           " disable man page search for word under cursor
" }}}

" Text Format {{{
set tabstop=2
set shiftwidth=2 " Tabs under smart indent
set nocindent
set expandtab
" }}}

" Searching {{{
set ignorecase
set smartcase  " Non-case sensitive search
set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>"" " Press Space to turn off highlighting and clear any message already displayed.
set wildignore+=*/tmp/*,*/node_modules/*,*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,.sass-cache,*.class,*.scssc,*/Godeps/*
if executable('ack')
  set grepprg=ack\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow\ $*
  set grepformat=%f:%l:%c:%m
endif
if executable('ag')
  set grepprg=ag\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow
  set grepformat=%f:%l:%c:%m
endif
" }}}

" Visual {{{
set showmatch   " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink

if has("gui_running")
  set noballooneval
endif
" }}}

" Sounds {{{
set noerrorbells
set novisualbell
" }}}

" Mouse {{{
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes
" }}}

set list                        " Show whitespace
set listchars=trail:·

set notimeout                   " No command timeout
set showcmd                     " Show typed command prefixes while waiting for operator

set splitright                  " Add new windows towards the right
set splitbelow                  " ... and bottom

set history=1024                " History size
set scrolloff=3                 " Scroll when the cursor is 3 lines from edge

" Write all writeable buffers when changing buffers or losing focus.
set autowriteall                " Save when doing various buffer-switching things.
autocmd BufLeave,FocusLost * silent! wall  " Save anytime we leave a buffer or MacVim loses focus.
