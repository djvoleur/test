#!/system/bin/sh

#set a 2gb vnswap size for zswap
swapoff /dev/block/vnswap0
echo "2147483648" > /sys/block/vnswap0/disksize
mkswap /dev/block/vnswap0
swapon /dev/block/vnswap0

