#!/bin/sh
export PATH=/bin

echo sabotage booting

mount -t proc proc /proc
mount -t sysfs sysfs /sys

# only show warning or worse on console
grep -q " verbose" /proc/cmdline && dmesg -n 8 || dmesg -n 3

hwclock -u -s

swapon -a

hostname $(cat /etc/hostname)
ifconfig lo up

mount -o remount,ro /
fsck -A -T -C -p
mkdir -p /dev/shm /dev/pts
mount -o remount,rw /
mount -a

[ -f /etc/random-seed ] && cat /etc/random-seed >/dev/urandom
dd if=/dev/urandom of=/etc/random-seed count=1 bs=512 2>/dev/null

dmesg >/var/log/dmesg.log

[ -x /etc/rc.local ] && /etc/rc.local
