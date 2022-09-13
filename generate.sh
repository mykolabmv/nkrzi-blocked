#!/bin/sh
true > blocked.conf

cat domains.nkrz|uniq| while read hosts
do
	echo "zone $hosts {type master; file \"blocked/block\"; };" >> blocked.conf
done

