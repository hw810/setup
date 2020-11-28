
sudo apt-get install software-properties-common
# sudo add-apt-repository ppa:neovim-ppa/stable
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install nodejs for coc
curl -sL install-node.now.sh/lts | sudo bash

mkdir -p ~/.config
cp -r ./nvimrcs ~/.config/nvim
