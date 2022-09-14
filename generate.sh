#!/bin/sh
rm blocked*.conf

cat domains.nkrz|sort -u| while read hosts
do
	echo "zone $hosts {type master; file \"/etc/bind/blocked/block\"; };" >> blocked_linux.conf
        echo "zone $hosts {type master; file \"/etc/namedb/blocked/block\"; };" >> blocked_bsd.conf

done

