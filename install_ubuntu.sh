install_build_tools=0
install_tmux=0
install_dircolors=1

dir_third=$HOME/third
mkdir -p ${dir_third}

function download_if_needed {
    local url=$1
    local dir_dest=$2
    fname=${url##*/}
    if [[ -e ${dir_dest}/${fname} ]]; then
        echo "${fname} already downloaded"
    else
        wget ${url} -P ${dir_dest}
    fi
}

if [[ ${install_dircolors}  == "1" ]]; then
    mkdir -p ~/third && cd ~/third && git clone https://github.com/seebi/dircolors-solarized.git
    echo "eval \`dircolors ~/third/dircolors-solarized/dircolors.256dark\`" >> ~/.bashrc
fi

if [[ ${install_build_tools} == "1" ]]; then
    sudo apt install build-essential
    sudo apt install autoconf automake libtool curl make g++ unzip
    sudo apt install cmake
fi

if [[ ${install_tmux} == "1" ]]; then
    sudo apt install ncurses-dev
    pushd ${dir_third}
    download_if_needed https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz ./
    tar xzvf libevent-2.0.21-stable.tar.gz
    cd libevent-2.0.21-stable
    rm -rf build
    mkdir build && cd build && ../configure --prefix $HOME/sys
    make
    make install
    popd

    pushd ${dir_third}
    download_if_needed https://github.com/tmux/tmux/releases/download/2.6/tmux-2.6.tar.gz ./
    tar -zxvf tmux-2.6.tar.gz
    cd tmux-2.6
    rm -rf build 
    mkdir build && cd build && ../configure CFLAGS="-I$HOME/sys/include" LDFLAGS="-L$HOME/sys/lib" --prefix $HOME/sys
    make
    make install
    popd
fi

