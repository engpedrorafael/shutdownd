#!/bin/bash

echo "Removing Service..."
update-rc.d -f shutdownd remove

echo "Removing shutdownd.sh from /usr/local/sbin ..."
rm -f /usr/local/sbin/shutdownd.sh

echo "Removing shutdownd from /etc/init.d ..."
rm -f /etc/init.d/shutdownd

