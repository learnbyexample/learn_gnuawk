wget https://ftp.gnu.org/gnu/gawk/gawk-5.0.1.tar.xz

tar -Jxf gawk-5.0.1.tar.xz

cd gawk-5.0.1/

./configure 

make

sudo make install

type -a awk

awk --version | head -n1

man awk

awk --help

