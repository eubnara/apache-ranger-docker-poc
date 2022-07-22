#!/bin/bash
set -xe

cd /opt/ranger_usersync
cp /tmp/install.properties /opt/ranger_usersync/install.properties
./setup.sh
./ranger-usersync-services.sh start
tail -f $(grep 'logdir' ./install.properties  | sed -e 's#.*=\(\)#\1#')/usersync-usersync-.log
