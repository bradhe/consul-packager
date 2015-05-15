#!/bin/bash
#
# Creates a Consul package with the relevant configuration directories.
#
VERSION=0.5.1

if [ ! -e /tmp/consul-$VERSION.zip ];
then
  curl -L https://dl.bintray.com/mitchellh/consul/${VERSION}_linux_amd64.zip > /tmp/consul-${VERSION}.zip
fi

unzip /tmp/consul-${VERSION}.zip -d /tmp

# Let's remove any existing deb packages that might be here.
rm -rf *.deb

# Now we'll actually create our new deb package.
fpm -s dir -t deb --name consul \
        --version ${VERSION} \
        --architecture amd64 \
        --config-files /etc/consul.json \
        /tmp/consul=/usr/bin/consul \
        ./consul.json=/etc/consul.json
