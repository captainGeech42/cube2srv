#!/bin/sh

# This script just makes sure that a config file exists before starting the server

cd /srv

if [ ! -f /.sauerbraten/server-init.cfg ]; then
    echo "ERROR: config /.sauerbraten/server-init.cfg does not exist, exiting"
    exit 1
fi

# config exists, start the server
./sauer_server -q/.sauerbraten
