mkdir -p ~/tmp && cd ~/tmp
git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git
cd gnome-terminal-colors-solarized && ./install.sh

echo '\ 
if [ -f ~/.dir_colors/dircolors ]; then 
    eval `dircolors ~/.dir_colors/dircolors`
fi' > ~/.bashrc

