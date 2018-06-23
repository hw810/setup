echo "\
source ~/.vim/basic.vim
source ~/.vim/plugin.vim
source ~/.vim/myconfig.vim
" > ~/.vimrc


mkdir -p ~/.vim
[[ ! -e ~/.vim/bundle/Vundle.vim ]] && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp -r vimrcs/* ~/.vim/



