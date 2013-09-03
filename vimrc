execute pathogen#infect()
syntax on
filetype plugin indent on

"solarized colorscheme options
colorscheme solarized
if has('gui_running')
    set background=light
else
    set background=dark
endif

let g:solarized_termtrans = 0

"display a different colored column at col 100
let &colorcolumn=join(range(100,102),",")

"set line numbers - Toggle between normal and relative
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

"make relative line numbers default
set relativenumber

"smart scroll
set so=14

nnoremap <C-n> :call NumberToggle()<cr>

set switchbuf=usetab,newtab
nnoremap <F8> :sbnext<CR>
nnoremap <S-F8> :sbprevious<CR>

"xterm style mouse mode (adjust splits, etc)
set mouse=n
set ttymouse=xterm2

"switch out of insert mode when idle
au CursorHoldI * stopinsert

"status line
"set statusline=%F%m%r%h%w\ (%{&ff}){%Y}[%l,%v][%p%%]\ %{strftime(\"%m/%d/%y\ -\ %H:%M\")}\ %{fugitive#statusline()}
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"enable airline tabs
let g:airline#extensions#tabline#enabled = 1

"cursor insert/normal mode changes
if (has("autocmd") && executable("gconftool-2"))
  au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Solarized/cursor_shape ibeam"
  au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Solarized/cursor_shape block"
  au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Solarized/cursor_shape block"
endif

"no beeps, just flash screen
set visualbell

"highlight search 
set hlsearch

"autocomplete/tab select commands
"wildmenu is set in vim-sensible
set wildmode=list:longest,full

"set default window splits to right, then below
set splitright
set splitbelow

"hide buffers, don't abandon
set hidden

set guifont=Source\ Code\ Pro\ Medium\ 11
" set guioptions-=T guioptions-=e guioptions-=L guioptions-=r
set shell=bash


augroup vimrc
  autocmd!
  autocmd GuiEnter * set columns=120 lines=60 number
augroup END

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif

"syntax checkers
let g:syntastic_javascript_checkers = ['jshint']

"undo/swap/backup files:

let s:dir = '~/.local/share/vim'
if isdirectory(expand(s:dir))
  if &directory =~# '^\.,'
    let &directory = expand(s:dir) . '/swap//,' . &directory
  endif
  if &backupdir =~# '^\.,'
    let &backupdir = expand(s:dir) . '/backup//,' . &backupdir
  endif
  if exists('+undodir') && &undodir =~# '^\.\%(,\|$\)'
    let &undodir = expand(s:dir) . '/undo//,' . &undodir
  endif
endif

if exists('+undofile')
  set undofile
endif

map <Esc>[B <Down>
""""""""""""""
" tmux fixes "
""""""""""""""
" Handle tmux $TERM quirks in vim
if $TERM =~ '^screen-256color'
    map <Esc>OH <Home>
    map! <Esc>OH <Home>
    map <Esc>OF <End>
    map! <Esc>OF <End>
endif

" vim:set ft=vim et sw=2:
