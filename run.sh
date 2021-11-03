#!/bin/sh

# This script just makes sure that a config file exists before starting the server

cd /srv

if [ ! -e server-init.cfg ]; then
    echo "ERROR: config file server-init.cfg does not exist, exiting"
    exit 1
fi

# config exists, start the server
./sauer_server
