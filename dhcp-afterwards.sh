#!/bin/sh
# Copyright (C) 2013 dazzyd.org

rebind() {
	udhcpc=$(pidof udhcpc)

	kill -SIGUSR2 $udhcpc
	echo "udhcpc release signal sent."
	sleep 1

	kill -SIGUSR1 $udhcpc
	echo "udhcpc renew signal sent."
	sleep 1
}

is_correct=$(ifconfig eth1 | grep "inet addr:{REAL_IP}")
[ -n "$is_correct" ] \
	&& echo "Needn't to rebind." && exit \
	|| rebind
