install_tmux=1
dir_build=$HOME/third

if [[ ${install_tmux} == "1" ]]; then
    pushd ${dir_build}
    wget https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz
    tar xzvf libevent-2.0.21-stable.tar.gz
    cd libevent-2.0.21-stable
    mkdir build && cd build && ../configure --prefix $HOME/sys
    make
    make install
    popd

    pushd ${dir_build}
    wget https://github.com/tmux/tmux/releases/download/2.6/tmux-2.6.tar.gz
    tar -zxvf tmux-2.6.tar.gz
    mkdir build && cd build && ../configure CFLAGS="-I$HOME/sys/include" LDFLAGS="-L$HOME/sys/lib"
    make
    sudo make install
    popd
fi
