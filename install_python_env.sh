dir_setup=~/build
dir_python=~/python/python365
# mirror=http://mirrors.sohu.com
mirror=http://npm.taobao.org/mirrors

VERSION=3.6.5
# VERSION=2.7.8
mkdir -p $dir_setup && pushd $dir_setup
[[ ! -f Python-${VERSION}.tgz ]] && wget ${mirror}/python/${VERSION}/Python-${VERSION}.tgz
if [[ -d Python-${VERSION} ]]; then
    echo "python $VERSION already installed."
else
    tar -zxvf Python-$VERSION.tgz
    cd Python-$VERSION && mkdir build && cd build
    ../configure --with-ensurepip=install --prefix=$dir_python
    make
    make install
    popd
fi

# mkdir -p $dir_setup && pushd $dir_setup
# [[ ! -f Python-2.7.14.tgz ]] && wget http://mirrors.sohu.com/python/2.7.14/Python-2.7.14.tgz
# if [[ -d Python-2.7.14 ]]; then
#     echo "python $VERSION is already installed."
# else
#     tar -zxvf Python-2.7.14.tgz
#     cd Python-2.7.14 && mkdir build && cd build
#     ../configure --with-ensurepip=install --prefix=$dir_python
#     make
#     make install
#     popd
# fi
