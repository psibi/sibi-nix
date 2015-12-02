source $stdenv/setup

PATH=$perl/bin:$PATH

cp -r $src .
cd hello-*
./configure --prefix=$out
make
make install
