sudo yum groupinstall "Development Tools"
sudo yum install ncurses-devel zlib-devel texinfo gtk+-devel gtk2-devel qt-devel tcl-devel tk-devel kernel-headers kernel-devel openssl-devel sqlite-devel readline-devel bzip2-devel libevent2-devel
sudo yum install cmake boost-devel eigen3-devel xz-devel.x86_64  

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
git clone git://git.code.sf.net/p/tmux/tmux-code tmux
cd tmux
sh autogen.sh
./configure && make
make install
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
