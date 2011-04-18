#!/bin/sh
dmesg -n 3
echo Booting sabotage install system...
mount -a
mount LABEL=SABOTAGE /installer
hostname sabotage
ifconfig lo up
cat /etc/motd
