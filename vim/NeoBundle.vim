runtime! lib/NeoBundle.before.vim

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim', 'master'

NeoBundle 'Shougo/vimproc.vim', {
      \   'build' : {
      \     'windows': 'tools\\update-dll-mingw',
      \     'cygwin': 'make -f make_cygwin.mak',
      \     'mac': 'make -f make_mac.mak',
      \     'unix': 'make -f make_unix.mak',
      \    },
      \ }

" ---------------
" Plugin Bundles
" ---------------

" Defaults
NeoBundle 'tpope/vim-sensible'

" Navigation
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'FelikZ/ctrlp-py-matcher'
NeoBundle 'scrooloose/nerdtree'

" UI Additions
" colorschemes
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'krishicks/vim-github-colorscheme'

NeoBundle 'bling/vim-airline'
NeoBundle 'kshenoy/vim-signature'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'jszakmeister/vim-togglecursor'
NeoBundle 'christoomey/vim-tmux-navigator'

" Commands
" gc
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-fugitive'
NeoBundleLazy 'gregsexton/gitv', {'depends':['tpope/vim-fugitive'], 'autoload':{'commands':'Gitv'}}
NeoBundle 'tpope/vim-abolish'
" :Move|Remove|Unlink|...
NeoBundle 'tpope/vim-eunuch'
NeoBundle 'godlygeek/tabular'
NeoBundleLazy 'mileszs/ack.vim', {'autoload':{'commands':'Ack'}}
NeoBundleLazy 'rking/ag.vim', {'autoload':{'commands':'Ag'}}

" Syntax
NeoBundle 'scrooloose/syntastic'

" Automatic Helpers
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-sleuth'
NeoBundle 'tpope/vim-unimpaired'

" MatchIt
NeoBundle 'matchit.zip'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'lucapette/vim-textobj-underscore'
NeoBundle 'nelstrom/vim-textobj-rubyblock'

" Language Additions
NeoBundle 'tpope/vim-projectionist'

" Ruby
NeoBundleLazy 'vim-ruby/vim-ruby', {'autoload': {'filetypes': ['ruby', 'rake']}}
NeoBundleLazy 'tpope/vim-rails', {'autoload': {'filetypes': ['ruby', 'rake']}}
NeoBundleLazy 'tpope/vim-rake', {'autoload': {'filetypes': ['ruby', 'rake']}}
NeoBundleLazy 'tpope/vim-cucumber', {'autoload': {'filetypes': ['cucumber']}}
NeoBundleLazy 'tpope/vim-bundler', {'autoload': {'filetypes': ['ruby', 'rake']}}
NeoBundleLazy 'ecomba/vim-ruby-refactoring', {'autoload': {'filetypes': ['ruby', 'rake']}}

" Clojure
NeoBundleLazy 'guns/vim-clojure-static', {'autoload': {'filetypes': ['clojure']}}
NeoBundleLazy 'tpope/vim-fireplace', {'autoload': {'filetypes': ['clojure']}}

" Scala
NeoBundleLazy 'derekwyatt/vim-scala', {'autoload': {'filetypes': ['scala']}}

" Go
NeoBundleLazy 'fatih/vim-go', {'autoload': {'filetypes': ['go']}}

" Docker
NeoBundle 'honza/dockerfile.vim'

" JavaScript
NeoBundleLazy 'pangloss/vim-javascript'
NeoBundleLazy 'mxw/vim-jsx'
NeoBundleLazy 'maksimr/vim-jsbeautify', {'autoload':{'filetypes':['javascript']}}
NeoBundleLazy 'kchmck/vim-coffee-script', {'autoload':{'filetypes':['coffee']}}
NeoBundleLazy 'leshill/vim-json', {'autoload':{'filetypes':['javascript','json']}}

" CSS / HTML
NeoBundleLazy 'mattn/emmet-vim', {'autoload':{'filetypes':['html','css']}}
NeoBundleLazy 'tpope/vim-haml', {'autoload':{'filetypes':['haml']}}
NeoBundleLazy 'nono/vim-handlebars', {'autoload':{'filetypes':['handlebars']}}
NeoBundleLazy 'cakebaker/scss-syntax.vim', {'autoload':{'filetypes':['scss','sass']}}
NeoBundleLazy 'hail2u/vim-css3-syntax', {'autoload':{'filetypes':['css','scss','sass']}}
NeoBundleLazy 'othree/html5.vim', {'autoload':{'filetypes':['html']}}
NeoBundleLazy 'juvenn/mustache.vim', {'autoload':{'filetypes':['mustache']}}
NeoBundleLazy 'gregsexton/MatchTag', {'autoload':{'filetypes':['html','xml']}}

" QuickFix tools
NeoBundle 'peeja/vim-cdo'

call neobundle#end()

NeoBundleCheck

