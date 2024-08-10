/bin/mount -t tmpfs tmpfs /dev
/bin/mkdir -p /dev/pts
/bin/mount -a

cp -rp /etc/* /var/tmp/
mount -t tmpfs -o mode=0755 tmpfs /etc
cp -rp /var/tmp/* /etc/
