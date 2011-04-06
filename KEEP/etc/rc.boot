#!/bin/sh
export PATH=/bin

echo sabotage booting

sleep 1
mount -t proc proc /proc
mount -t sysfs sysfs /sys

hwclock -u -s

#swapon -a

hostname $(cat /etc/hostname)

# FIXME fsck
mount -a

[ -f /etc/random-seed ] && cat /etc/random-seed >/dev/urandom
dd if=/dev/urandom of=/etc/random-seed count=1 bs=512 2>/dev/null

dmesg >/var/log/dmesg.log
