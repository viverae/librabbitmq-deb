# Build RabbitMQ Client

VERSION=0.4.0
PLATFORM=amd64
GPG_KEY=CB7FF2D8
GPG_MAINTAINER="Package Repository Key (OneRecovery) <packages@onerecovery.com>"
export DEBEMAIL=`git config --get user.email`
export DEBFULLNAME=`git config --get user.name`

sudo apt-get install cmake
sudo apt-get install libpopt-dev xmlto
git clone https://github.com/alanxz/rabbitmq-c.git
cd rabbitmq-c && git checkout v0.4.0
tar -C .. -cf - debian |tar -xvf - 
dch --distributor=or  -l '+or'
sudo debuild -k"${GPG_KEY}" -m"${GPG_MAINTAINER}"
