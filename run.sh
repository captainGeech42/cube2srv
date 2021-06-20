#!/bin/sh

# This script just makes sure that a config file exists before starting the server

cd /srv/sauerbraten

if [ ! -f "server-init.cfg" ]; then
    echo "ERROR: config file /srv/sauerbraten/server-init.cfg does not exist, exiting"
    exit 1
fi

# config exists, start the server
./bin_unix/linux_64_server