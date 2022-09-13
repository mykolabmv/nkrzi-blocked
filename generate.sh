#!/bin/sh
true > blocked.conf

cat domains.nkrz|while read hosts
do
	echo "zone $hosts {type master; file \"blocked/block\"; };" >> blocked.conf
done

