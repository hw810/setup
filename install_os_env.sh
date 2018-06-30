sudo yum groupinstall "Development Tools"
sudo yum install ncurses-devel zlib-devel texinfo gtk+-devel gtk2-devel qt-devel tcl-devel tk-devel kernel-headers kernel-devel openssl-devel sqlite-devel readline-devel bzip2-devel libevent2-devel
sudo yum install cmake boost-devel eigen3-devel xz-devel.x86_64  
sudo yum install tree
sudo yum install npm

mkdir -p ~/setup

# tmux
pushd ~/setup
wget https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz
tar xzvf libevent-2.0.21-stable.tar.gz
cd libevent-2.0.21-stable
./configure && make
make install
popd

pushd ~/setup
wget https://github.com/tmux/tmux/releases/download/2.6/tmux-2.6.tar.gz
tar -zxvf tmux-2.6.tar.gz
mkdir build && cd build && ../configure && make
sudo make install
popd



# mongodb
sudo echo "\
[mongodb-org-3.6]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.6/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-3.6.asc
" > /etc/yum.repos.d/mongodb-org-3.6.repo
sudo yum install -y mongodb-org


# install gcc

pushd ~/setup
GCC_VERSION=gcc-4.8.2
sudo yum install glibc-devel.i686 glibc-i686
# wget https://ftp.gnu.org/gnu/gcc/gcc-4.8.2/gcc-4.8.2.tar.gz
wget https://ftp.gnu.org/gnu/gcc/${GCC_VERSION}/${GCC_VERSION}.tar.gz
tar xzf ${GCC_VERSION}.tar.gz
cd ${GCC_VERSION}
./contrib/download_prerequisites
cd ..
mkdir objdir
cd objdir
../configure --prefix=$HOME/gcc/${GCC_VERSION} --enable-languages=c,c++,fortran,go
make
make install
popd


