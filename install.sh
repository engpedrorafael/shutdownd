#!/bin/bash

echo "Installing shutdownd.sh to /usr/local/sbin ..."
cp ./shutdownd.sh /usr/local/sbin/
chmod 755 /usr/local/sbin/shutdownd.sh

echo "Installing shutdownd to /etc/init.d ..."
cp ./shutdownd /etc/init.d/
chmod 755 /etc/init.d/shutdownd

echo "Installing Service..."
update-rc.d shutdownd defaults

