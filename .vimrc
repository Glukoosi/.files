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

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()


map  ; :Files<CR>
map  ' :Rg<CR>
imap jk <Esc>

nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>


set number
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set laststatus=2


syntax on
