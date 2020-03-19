call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'rking/ag.vim'
Plug 'tpope/vim-commentary'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
" Plug 'scrooloose/nerdtree.git'
Plug 'preservim/nerdtree'

call plug#end()

source /home/wanghuaidong/wanghuaidong/.config/nvim/coc.vim
source ~/.vim/basic.vim
source ~/.vim/myconfig.vim
source ~/.config/nvim/myconfig.vim

