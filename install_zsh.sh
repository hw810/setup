sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
cat ./zshrcs/zshrc >> ~/.zshrc
cp ./zshrcs/mrhd.zsh-theme ~/.oh-my-zsh/themes

