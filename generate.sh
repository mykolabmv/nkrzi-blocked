#!/bin/sh
mv blocked_bsd.conf blocked_bsd.conf.bckp
mv blocked_linux.conf blocked_linux.conf.bckp

sort -u domains.nkrz > domains.txt

cat domains.txt | while read hosts
do
	echo "zone $hosts {type master; file \"/etc/bind/blocked/block\"; };" >> blocked_linux.conf
        echo "zone $hosts {type master; file \"/etc/namedb/blocked/block\"; };" >> blocked_bsd.conf

done

