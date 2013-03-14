call pathogen#infect()

" General settings {{{

" Turn syntax highlighting on.
syntax on

set nocompatible
" Always show the statusline.
set laststatus=2
" Necessary to show unicode glyphs.
set encoding=utf-8
" Use spaces for tabs.
set expandtab
set smarttab
" Copy indent from current line when starting a new line.
set autoindent
" Do smart autoindenting when starting a line.
set smartindent
" Set number of spaces a tab counts for to 2.
set tabstop=2
" Set number of spaces a counts for while performing editing operations to 2.
set softtabstop=2
" Set number of spaces for each step of indent to 2 and use indent rounding
" when using > and <.
set shiftround shiftwidth=2
" Show matching brackets as they are entered.
set showmatch
" Show search matches while typing.
set incsearch
" Highlight search results.
set hlsearch
" Turn on line numbers.
set number
" Turn off text wrapping.
set nowrap
" Use a minimum window width of 84 (numberwidth + 80) and a minimum window
" height of 24.
set winwidth=84 winheight=24
" Use bash as the primary shell.
set shell=bash
" Show line and column information.
set ruler
" Look for and call vim commands within the first 5 lines of a document.
set modeline modelines=5
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
" TextMate style invisible characters.
set listchars=tab:▸\ ,eol:¬
" Highlight the current line.
set cursorline
" Prevent Vim from clobbering the scrollback buffer.
" See: http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=

" }}}
" Color scheme {{{

if (&t_Co == 256 || &t_Co == 88) || has('gui_running')
  colorscheme lite-brite
endif

" }}}
" GUI settings {{{

if has('gui_running')
  "set guifont=Andale\ Mono:h16
  "set guifont=Consolas:h16
  "set guifont=Courier:h16
  "set guifont=Courier\ New:h16
  "set guifont=DejaVu\ Sans\ Mono:h16
  "set guifont=Espresso\ Mono:h16
  "set guifont=Inconsolata:h18
  "set guifont=Liberation\ Mono:h14 linespace=4
  set guifont=Liberation\ Mono\ for\ Powerline:h14 linespace=1
  "set guifont=Menlo:h16
  "set guifont=Menlo\ for\ Powerline:h14
  "set guifont=Monaco:h14 linespace=-1
  "set guifont=Monaco\ for\ Powerline:h14
  "set guifont=Ubuntu\ Mono:h18
  "set guifont=Source\ Code\ Pro:h16
  "set guifont=Source\ Code\ Pro\ for\ Powerline:h14
  "set guifont=Terminus\ for\ Powerline:h16
  set guioptions=Ace
  set fuopt=maxvert,maxhorz
endif

" }}}
" Key mappings {{{

let mapleader=","
let maplocalleader=","

inoremap <leader>e <esc>

nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Save and quit.
nnoremap <leader>sq ZZ
" Hard quit.
nnoremap <leader>q :q!<cr>
" Save and delete buffer.
nnoremap <leader>sbd :w<cr> :bd<cr>
" Hard buffer delete.
nnoremap <leader>bd :bd!<cr>
nnoremap H 0
nnoremap L $
" Page up/down
nnoremap <c-j> <c-d>
nnoremap <c-k> <c-u>
" TagBar
nnoremap <leader>c :TagbarToggle<cr>
" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv
" Use very magic regular expressions when seraching forward.
nnoremap / /\v
nnoremap ? ?\v
" Clear the search buffer when typing return.
nnoremap <cr> :nohlsearch<cr>

" Use very magic regular expressions when seraching backward.
vnoremap / /\v
vnoremap ? ?\v
" TextMate style indention and dedention of visually selected lines.
vnoremap <tab> >`<V`>
vnoremap <s-tab> <`<V`>

" }}}
" Tab {{{

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

" }}}
" Powerline {{{

let g:Powerline_symbols = 'fancy'

" }}}
" Miscellaneous {{{

let g:clojure_lambda_conceal = 1

" Always use the tree style display with netrw.
let g:netrw_liststyle = 3
let g:netrw_sort_sequence = '[\/]$,*,\.bak$,\.o$,\.h$,\.info$,\.swp$,\.obj$'

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
nmap <C-S-h> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

"}}}
