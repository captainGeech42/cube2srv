#!/bin/sh

sed -s "s/REPLACE_SERVERDESC_REPLACE/$SERVER_DESCRIPTION/g" server-init.cfg > server-init.cfg
sed -s "s/REPLACE_SERVERPASS_REPLACE/$SERVER_PASSWORD/g" server-init.cfg > server-init.cfg
sed -s "s/REPLACE_SERVERADMINPASS_REPLACE/$SERVER_ADMIN_PASSWORD/g" server-init.cfg > server-init.cfg

./bin_unix/linux_64_server