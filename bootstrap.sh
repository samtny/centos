# set up os for compilation
yum -y groupinstall "Development Tools"

if [ ! -f /usr/local/bin/node ]; then
  # get, build and install node.js
  cd /usr/src
  [ ! -f node-v0.10.30.tar.gz ] && wget http://nodejs.org/dist/v0.10.30/node-v0.10.30.tar.gz
  [ ! -d node-v0.10.30 ] && tar zxf node-v0.10.30.tar.gz
  cd node-v0.10.30
  ./configure
  make
  make install
fi

sed -i -e 's/secure_path = \/sbin:\/bin:\/usr\/sbin:\/usr\/bin/secure_path = \/sbin:\/bin:\/usr\/sbin:\/usr\/bin:\/usr\/local\/bin/g' /etc/sudoers


