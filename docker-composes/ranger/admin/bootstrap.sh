#!/bin/bash
set -xe

cd /opt/ranger_admin/
cp /tmp/install.properties /opt/ranger_admin/install.properties
./setup.sh
ranger-admin start
tail -f logfile
