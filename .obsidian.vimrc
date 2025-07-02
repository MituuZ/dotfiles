" Yank to system clipboard
set clipboard=unnamed

" Move per screen, not per line
nmap j gj
nmap k gk

" Follow links with gd
exmap follow obcommand editor:follow-link
nmap gd :follow<CR>

" Jump to and from file
exmap back obcommand app:go-back
nmap <C-o> :back<CR>
exmap forward obcommand app:go-forward
nmap <C-i> :forward<CR>

" Emulate Folding https://vimhelp.org/fold.txt.html#fold-commands
exmap togglefold obcommand editor:toggle-fold
nmap zo :togglefold
nmap zc :togglefold
nmap za :togglefold

exmap unfoldall obcommand editor:unfold-all
nmap zR :unfoldall

exmap foldall obcommand editor:fold-all
nmap zM :foldall

" noremap means not recursive
" Keep cursor in the middle when jumping
noremap <C-d> <C-d>zz
noremap <C-u> <C-u>zz

" Keep search results in the middle
noremap n nzzzv
noremap N Nzzzv

" Jump to start/end
map H g^
map L g$

map - /
imap jj <Esc>

" Set Command Palette to C-S-p and Quick Switcher to C-S-o
