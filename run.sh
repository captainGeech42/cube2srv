#!/bin/sh

sed -s "s/REPLACE_SERVERDESC_REPLACE/$SERVER_DESCRIPTION/g" server-init.cfg > a
sed -s "s/REPLACE_SERVERPASS_REPLACE/$SERVER_PASSWORD/g" a > b
sed -s "s/REPLACE_SERVERADMINPASS_REPLACE/$SERVER_ADMIN_PASSWORD/g" b > server-init.cfg

rm -f a b

./bin_unix/linux_64_server