# a debian package builder for [rabbitmq-c](https://github.com/alanxz/rabbitmq-c)

Since the debian package building has been [removed from the rabbitmq-c repo](https://github.com/alanxz/rabbitmq-c/commit/a5749657ee7571788d74702969f69cd37616c6dd) it seemed appropriate to publicly post how we build this code into a package internally at OneHealth. The hope is to collaborate with others on creating a standardized version of the package that we can contribute to debian and ubuntu alike that follows the project specific standards.


# Requirements

This has been tested on Ubuntu Precise 12.04.3 LTS 64-bit

# Usage

It uses your git config to determin the e-mail and name to use in the debian change log. This is useful to know who build the package in a more automated way, but I recognize that this may not work for everyone. I am open to suggestions on how to make this (or any other parts of) this code better.


It assumes that you have a debian build environment installed. Which can be accomplished

````` bash
apt-get install devscripts dh-make fakeroot build-essential linux-headers-`uname -r` git-buildpackage
`````

Currently, the way we build is by using the following command line:


````` bash
GPG_KEY=XXXXXX GPG_MAINTAINER=gpgkey@example.com ./build.sh
`````

