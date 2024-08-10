export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/gm/bin:/gm/tools:/mnt/mtd/app
export LD_LIBRARY_PATH=/mnt/mtd/lib:/lib:/usr/lib
cp /mnt/mmc/backup_sysconfig/syscfg/config_default/app_ajy_sn.ini /var/syscfg/config_default/app_ajy_sn.ini
/mnt/mmc/working_gdb :2001 /mnt/mtd/bin/initApp 2>/mnt/mmc/error &
