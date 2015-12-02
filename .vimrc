" Filetype detection
au BufNewFile,BufRead *.erb set filetype=ruby

" Different tab lengths
autocmd Filetype bash set expandtab softtabstop=2 tabstop=2 shiftwidth=2
autocmd Filetype sh set expandtab softtabstop=2 tabstop=2 shiftwidth=2
autocmd Filetype php set expandtab softtabstop=2 tabstop=2 shiftwidth=2
autocmd Filetype python set expandtab softtabstop=2 tabstop=2 shiftwidth=2
autocmd Filetype yaml set expandtab softtabstop=2 tabstop=2 shiftwidth=2
autocmd Filetype ruby set expandtab softtabstop=2 tabstop=2 shiftwidth=2
autocmd Filetype puppet set expandtab softtabstop=2 tabstop=2 shiftwidth=2

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Functions
command! -nargs=0 Execprog
\ | execute ':silent !%'
\ | execute :redraw!'

" Variables
set nocompatible
set bs=2
set autoindent
set number
set timeoutlen=200
let mapleader=","
" Color syntax
color molokai
syntax on

" Pathogen
filetype plugin indent on
execute pathogen#infect()

" Abbreviations
iabbrev ret return
iabbrev init@ def<space>__init__(
iabbrev main@ if<space>__name__<space>==<space>'__main__':

" Normal Mode bindings
" Buffer movement
nnoremap <Leader>s :update<CR>
nnoremap <Leader>l :bnext<CR>
nnoremap <Leader>h :bprevious<CR>
nnoremap <Leader>t :enew<CR>
nnoremap <Leader>bs :split<CR>
nnoremap <Leader>bd :bd<CR>
nnoremap <Leader>bl :ls<CR>
nnoremap <Leader>sv :source ~/.vimrc<CR>
nnoremap <Leader>ev :vsplit $MYVIMRC<CR>
" p4 edit current file
nnoremap <Leader>e :!p4 edit %<CR>

" <space> selects word.
nnoremap <space> viwy
" <Leader>" or ' puts current item into quotes
nnoremap <Leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <Leader>' viw<esc>a'<esc>hbi'<esc>lel
" Puts current item into parenthesis
nnoremap <Leader>) Ea)<esc>Bi(<esc>B
nnoremap <Leader>f /def <CR>ww
" Easy movement between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Goto beginning and end of line.
nnoremap L $
nnoremap H ^
" Comment out line.
nnoremap <buffer> <Leader>c I#<esc>h
" NERD Tree
nnoremap <F7> :NERDTreeToggle<CR>
" Tagbar
nnoremap <F8> :TagbarToggle<CR>

" Ctrl bindings for Insert Mode.
inoremap <C-d> <esc>ddi
inoremap <C-y> <esc>yyi
inoremap <C-p> <esc>pi
inoremap <C-u> <esc>ui
inoremap <C-L> <esc>$i
inoremap <C-H> <esc>^i
" Exit Insert Mode.
inoremap jk <esc>

" Visual Mode bindings.
vnoremap jk <esc>

" No more training wheels.
"noremap <Up> <nop>
"noremap <Down> <nop>
"noremap <Left> <nop>
"noremap <Right> <nop>
"noremap <esc> <nop>

" Operators
onoremap p i(
