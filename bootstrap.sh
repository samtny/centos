# set up os for compilation
yum -y groupinstall "Development Tools"

# get, build and install node.js
cd /usr/src
[ ! -f node-v0.10.30.tar.gz ] && wget http://nodejs.org/dist/v0.10.30/node-v0.10.30.tar.gz
[ ! -d node-v0.10.30 ] && tar zxf node-v0.10.30.tar.gz
cd node-v0.10.30
./configure
make
make install


