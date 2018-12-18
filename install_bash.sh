mkdir -p ~/.bash
cp -rf bashrcs/* ~/.bash/
cp ~/.bash/bashrc ~/.bashrc
cp ~/.bash/inputrc ~/.inputrc
cp ~/.bash/tmux.conf ~/.tmux.conf
mkdir -p ~/.pip && cp ~/.bash/pip.conf ~/.pip/pip.conf
