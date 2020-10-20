if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

map <F2> :w!<CR>
map <F8> :!norminette -R CheckForbiddenSourceHeader ~/c00/*<CR>
map <F9> :!gcc * -Wall -Wextra -Werror -o %<<CR>
map <F10> :! ./%<<CR>

set autoindent " New lines inherit the indentation of previous lines.
set tabstop=4 " Indent using two spaces.
set nu
"set expandtab " Convert tabs to spaces.
"set shiftwidth=2 " When shifting, indent using four spaces.
set shiftround " When shifting lines, round the indentation to the nearest multiple of “shiftwidth.”
set smarttab " Insert “tabstop” number of spaces when the “tab” key is pressed.

set hlsearch " Highlight searched keyword
nnoremap i :noh<cr>i
nnoremap o :noh<cr>o
nnoremap O :noh<cr>O
set incsearch " Incremental search that shows partial matches.
set ignorecase " Automatically switch search to case-sensitive when search query contains an uppercase letter.

set guifont=나눔고딕코딩:h15

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Here you cat set your plug AAA!

Plug 'doums/darcula'

" Initialize plugin system
call plug#end()


colo darcula
set termguicolors

" 구문 강조 사용
if has("syntax")
 syntax on
endif
