set nocompatible
filetype plugin indent on
set nowrap

" Tab options---{{{
set tabstop=4
set shiftwidth=4
set expandtab
" ---}}}

" Numbering Options---{{{
set number
set numberwidth=4
" ---}}}

" Appearance Options---{{{
color wasabi256
set guifont=Source_Code_Pro
let g:lisp_rainbow=1
set hlsearch
set incsearch
set scrolloff=10
set showcmd
" ---}}}

" Status Line Settings---{{{
let laststatus=2
set statusline=%.25f
set statusline+=\ -\ File\ Type:\ %y
set statusline+=%=
set statusline+=%l
set statusline+=/
set statusline+=%L
" ---}}}

" Key Remappings---{{{
let mapleader="-"
let localleader="\\"
" Personal Keymaps---{{{
inoremap <S-CR> <ESC>
nnoremap <SPACE> <PageDown>
nnoremap <S-SPACE> <PageUp>
nnoremap <leader><c-[> :vsplit
nnoremap <leader><c-]> :split 
nnoremap <Up> <c-w>k
nnoremap <Down> <c-w>j
nnoremap <Left> <c-w>h
nnoremap <Right> <c-w>l
nnoremap <S-Up> <c-w>K
nnoremap <S-Down> <c-w>J
nnoremap <S-Left> <c-w>H
nnoremap <S-Right> <c-w>L
nnoremap <leader><c-esc> <c-w>o
nnoremap <silent> <CR> :nohlsearch<CR>
nnoremap <silent> <leader><F5> :mksession!<CR>
nnoremap <silent> <leader><F9> :source Session.vim<CR>
" ---}}}

"Tutorial Remaps---{{{
nnoremap <leader>- ddp
nnoremap <leader>_ ddkP
inoremap <leader><c-u> <ESC>viWUEa
nnoremap <leader><c-u> viWUE
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>
" ---}}}

" Abbreviations---{{{
iabbrev adn and
iabbrev tehn then
iabbrev wehn when
iabbrev waht what
" ---}}}

" Habit Aid Unbindings---{{{
inoremap <Left> <nop>
inoremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <esc> <nop>
" ---}}}}}}

" AutoCommands---{{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
augroup filetype_python
    autocmd!
    autocmd FileType python nnoremap <localleader><F5> :! python %<CR>
augroup END
" ---}}}
