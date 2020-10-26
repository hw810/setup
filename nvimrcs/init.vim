call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'rking/ag.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'

call plug#end()

source ~/.config/nvim/coc.vim
source ~/.config/nvim/basic.vim
source ~/.config/nvim/myconfig.vim

