# Boot to single user mode
setenv bootargs ${bootargs} single init=/bin/sh
boot

# Create mount points and set hostname
/sbin/swapoff -a
/bin/mount -t tmpfs tmpfs /dev
/bin/mkdir -p /dev/pts
/bin/mkdir -p /dev/shm
/bin/mount -a
/bin/hostname -F /etc/hostname

# Trigger normal startup
/etc/init.d/rcS

# Kill main processes
kill -9 180
kill -9 181

# Disable kernel watchdog
sh /mnt/mmc/disable_watchdog.sh &

# Start main app with debugger
/mnt/mmc/initApp_gdb.sh &
