let mapleader = " "

syntax on
" Per machine configuration files
if filereadable(expand("~/.machine_vimrc"))
    source ~/.machine_vimrc
endif

set scrolloff=8
set incsearch
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent
set ignorecase
set smartcase
set clipboard=unnamed,unnamedplus

" Move per screen, not per line
map j gj
map k gk

" Jump to start/end
map H ^
map L $

" Keep cursor in the middle when jumping
map <C-d> <C-d>zz
map <C-u> <C-u>zz

" Line movement
vmap J :m '>+1<CR>gv=gv
vmap K :m '<-2<CR>gv=gv

" Keep search results in the middle
map n nzzzv
map N Nzzzv

" search and replace yank selection
xnoremap <leader>srs y:%s/<c-r>"//gc<left><left><left>

" Copy to system clipboard with leader y
map <Leader>y "+y
" Paste from system clipboard with leader p
map <Leader>p "+p

" Copy the whole buffer to the clipboard
map <leader>cp ggVG"+y
" Clear the current buffer
map <leader>clr ggVGd

" Use <C-w>N to exit terminal mode. Allows moving freely in the terminal output <3
" Use N to exit, h and l to move between windows
tnoremap <Esc> <C-\><C-n>
tnoremap <C-w>h <C-\><C-n><C-w>h
tnoremap <C-w>l <C-\><C-n><C-w>l

" Vim script folder
set runtimepath+=~/vimscripts
" usage: :runtime script.vim
" Doesn't work in IntelliJ, but the scripts can still be sourced

" Add PV
map <Leader>pv :Ex<CR>

map - /
imap jj <Esc>
