execute pathogen#infect()
syntax on
filetype plugin indent on

"solarized options
colorscheme solarized
if has('gui_running')
    set background=light
else
    set background=dark
endif

let g:solarized_termtrans = 1

let &colorcolumn=join(range(100,102),",")
"set number
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>


"ctags in new tab
:nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T

set switchbuf=usetab,newtab
nnoremap <F8> :sbnext<CR>
nnoremap <S-F8> :sbprevious<CR>

"status line
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}[%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}\ %{fugitive#statusline()}
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"cursor insert/normal mode changes
if (has("autocmd") && executable("gconftool-2"))
   au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
   au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
   au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
endif


"some hashtrocket vimrc goodness

set visualbell

set wildmenu
set wildmode=list:longest,full

set splitright
set splitbelow

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

"store tmp/swp/undo files somewhere else
set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.vim/tmp/backup//
set backup

set dir-=.
set dir-=~/,
set dir-=~/tmp
set dir-=/var/tmp,
set dir^=~/.vim/tmp/swap//,.

set undodir+=~/.vim/tmp/undo//
set undofile

