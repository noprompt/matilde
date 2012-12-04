call pathogen#infect()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
" Always show the statusline
set laststatus=2
" Necessary to show unicode glyphs
set encoding=utf-8
" Use spaces for tabs
set expandtab
set smarttab
" Copy indent from current line when starting a new line
set autoindent
" Do smart autoindenting when starting a line
set smartindent
" Set number of spaces a tab counts for to 2
set tabstop=2
" Set number of spaces a counts for while performing editing operations to 2
set softtabstop=2
" Set number of spaces for each step of (auto)indent to 2
set shiftwidth=2
" Turn syntax highlighting on
syntax on
" Show matching brackets as they are entered.
set showmatch
" Show search matches while typing.
set incsearch
" Highlight search results.
set hlsearch
" Turn on line numbers
set number
" Turn off text wrapping
set nowrap
" Use a minimum window width of 84 (numberwidth + 80).
set winwidth=84
" Use a minumum window height of 24.
set winheight=24
" Use bash as the primary shell
set shell=bash
" Show line and column information
set ruler
" Look for and call vim commands within the first 5 lines of a document.
set modeline
set modelines=5
" Wildmenu!
set wildmenu
set wildmode=longest,list
" Backspace
set bs=2
" Enable filetype specific indention
filetype indent on
filetype plugin indent on
" Enable filetype specific plugins
filetype plugin on

set listchars=tab:▸\ ,eol:¬

" Highlight the current line.
set cursorline

" Prevent Vim from clobbering the scrollback buffer.
" See: http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=

" Highlight the 80th column
"if exists("+colorcolumn")
"  set colorcolumn=80
"endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color scheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if (&t_Co == 256 || &t_Co == 88) || has('gui_running')
  colorscheme lite-brite
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('gui_running')
  "set guifont=Andale\ Mono:h16
  "set guifont=Consolas:h16
  "set guifont=Courier:h16
  "set guifont=Courier\ New:h16
  "set guifont=DejaVu\ Sans\ Mono:h16
  "set guifont=Espresso\ Mono:h16
  "set guifont=Inconsolata:h18
  set guifont=Liberation\ Mono\ for\ Powerline:h16
  "set guifont=Menlo:h16
  "set guifont=Menlo\ for\ Powerline:h14
  "set guifont=Monaco:h16
  "set guifont=Monaco\ for\ Powerline:h14
  "set guifont=Ubuntu\ Mono:h18
  "set guifont=Source\ Code\ Pro:h16
  "set guifont=Source\ Code\ Pro\ for\ Powerline:h14
  "set guifont=Terminus\ for\ Powerline:h16
  set guioptions=Ace
  set fuopt=maxvert,maxhorz
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","
let maplocalleader=","

" ,e to esc
inoremap <leader>e <esc>
inoremap <m-v> :r!pbpaste<cr>

" ctrl+j to ctrl+d (page down)
" ctrl+k to ctrl+u (page up)
nnoremap <c-j> <c-d>
nnoremap <c-k> <c-u>

nnoremap <leader>c :TagbarToggle<cr>

" Don't 'normal' regular expressions
nnoremap / /\v
vnoremap / /\v

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Miscellaneous
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always use the tree style display with netrw.
let g:netrw_liststyle = 3
let g:netrw_sort_sequence = '[\/]$,*,\.bak$,\.o$,\.h$,\.info$,\.swp$,\.obj$'

" Use them fancy powerline symbols.
let g:Powerline_symbols = 'fancy'

" Use Clojure syntax highlighting for ClojureScript files.
au BufNewFile,BufRead *.cljs set filetype=clojure

" VimClojure
let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1
let g:vimclojure#NailgunPort = "127.0.0.1"
let g:vimclojure#NailgunPort = "2113"
let g:vimclojure#SplitPos = "right"
let g:vimclojure#WantNailgun = 1
let g:vimclojure#FuzzyIndent = 1

" Use Bash syntax for shell scripts by default.
let g:is_bash=1

" Use mysql highlighting for sql files.
au BufNewFile,BufRead *.sql set filetype=mysql

" Underline search results.
hi Search cterm=underline ctermbg=NONE ctermfg=NONE gui=underline guibg=NONE guifg=NONE

" Clear the search buffer when typing return.
" See: https://github.com/garybernhardt/dotfiles/blob/master/.vimrc#L120-123
function! MapCR()
  nnoremap <cr> :nohlsearch<cr>
endfunction
call MapCR()

 " Jump to last cursor position unless it's invalid or in an event handler
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif

" Strip trailing whitespace on save.
" See: http://vimcasts.org/episodes/tidying-whitespace/
function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history,
  " and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
