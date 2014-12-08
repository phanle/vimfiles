" ----------------------------------------
" Bindings
" ----------------------------------------

" Note: This line MUST come before any <leader> mappings
let g:mapleader=","

set pastetoggle=<F6>
map <F6> :set invpaste<CR>:set paste?<CR>

nnoremap j gj
nnoremap k gk

" Fast scrolling
nnoremap <C-e>  3<C-e>
nnoremap <C-y>  3<C-y>

" Previous/next quickfix file listings (e.g. search results)
map <M-D-Down>  :cn<CR>
map <M-D-Up>    :cp<CR>

" Copy current file path to system pasteboard
map <silent> <D-C> :let @* = expand("%")<CR>:echo "Copied: ".expand("%")<CR>
map <leader>C :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>

" AckGrep current word
map <leader>a :call AckGrep()<CR>
" AckVisual current selection
vmap <leader>a :call AckVisual()<CR>

" Common typos
command! W w
command! Q q
command! WQ wq
command! Wq wq

" reselect visual block after indent
vnoremap < <gv
vnoremap > >gv

" make Y consistent with C and D. See :help Y.
nnoremap Y y$

" ---------------
" Leader Commands
" ---------------

" Toggle spelling mode with ,s
nmap <silent> <leader>ss :set spell!<CR>
nmap <silent> <leader>sf :QuickSpellingFix<CR>

" Other
map <leader>Y :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%")<CR>
map <leader>C :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>

function! CRWriteIfNecessary()
  if !&modified || &readonly || &filetype == "qf"
    " Execute a normal enter when in Quickfix list.
    execute "normal! \<enter>"
  else
    :write
  endif
endfunction
function! MapCR()
  nnoremap <silent> <enter> :call CRWriteIfNecessary()<CR>
endfunction
call MapCR()

nnoremap <silent><leader><C-]> <C-w><C-]><C-w>T

" Test runner {{{
" Run this file
map <leader>t :call RunTestFile()<cr>
" Run only the example under the cursor
map <leader>T :call RunNearestTest()<cr>
" }}}
