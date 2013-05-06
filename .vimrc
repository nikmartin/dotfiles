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

