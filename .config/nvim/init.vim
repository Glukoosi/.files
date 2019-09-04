if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'

Plug 'w0rp/ale'
call plug#end()

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

autocmd Filetype go setlocal noexpandtab

map  ; :Files<CR>
map  ' :Rg<CR>
imap jk <Esc>


inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

set number
