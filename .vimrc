set nocp 
execute pathogen#infect()
syntax on
filetype plugin indent on
colorscheme solarized
set background=dark
let &colorcolumn=join(range(100,120),",")
set number

"ctags in new tab
:nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T

"status line
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}[%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}\ %{fugitive#statusline()}

"some hashtrocket vimrc goodness

set visualbell

set wildmenu
set wildmode=list:longest,full

set splitright
set splitbelow

set hidden

set guifont=Monaco:h16
set guioptions-=T guioptions-=e guioptions-=L guioptions-=r
set shell=bash

augroup vimrc
  autocmd!
  autocmd GuiEnter * set columns=120 lines=70 number
augroup END

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif

