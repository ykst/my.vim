syntax on
set nocp
filetype plugin on
filetype indent on
set smartindent
set backspace=2
nmap <Space> <Esc>i
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>
set tabstop=4
set shiftwidth=4
set novisualbell
set number
set expandtab
set clipboard+=autoselect
set guioptions+=a
set mouse=a
set noignorecase
set statusline=%m%f[%n%{bufnr('$')>1?'/'.bufnr('$'):''}%{winnr('$')>1?':'.winnr().'/'.winnr('$'):''}]%=%l/%L,%c%V%4P
set cursorline

augroup cch
autocmd! cch
autocmd WinLeave * set nocursorline
autocmd WinEnter,BufRead * set cursorline
augroup END
set lcs=tab:->,trail:~,extends:>,precedes:<
:hi clear CursorLine
:hi CursorLine gui=underline
highlight CursorLine ctermbg=blue guibg=blue

set fileformats=unix,dos,mac
if exists('&ambiwidth')
  set ambiwidth=double
endif
set fenc=utf-8
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>
"inoremap <C-@> <Esc>
set backup
set backupdir=$HOME/.vimbackup
set swapfile
set directory=$HOME/.vimswap
set undodir=$HOME/.vimundo

autocmd BufWritePre * :%s/\s\+$//e
