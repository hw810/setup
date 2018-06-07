dir_setup=~/setup_test
dir_python=~/python_test

mkdir -p $dir_setup && pushd $dir_setup
[[! -f Python-2.7.14.tgz ]] && wget http://mirrors.sohu.com/python/2.7.14/Python-2.7.14.tgz
[[ -d Python-2.7.14 ]] && rm -rf Python-2.7.14
tar -zxvf Python-2.7.14.tgz
cd Python-2.7.14 && mkdir build && cd build
../configure --with-ensurepip=install --prefix=$dir_python
make
make install
popd


