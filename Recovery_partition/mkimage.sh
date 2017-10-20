
path=./rom
name=recovery.bin

path=./ddextract
name=mmcblk0p10.img
kernel_addr=0x2600000
ramdisk=0x500000
secstage=0x2400010

gzip < ${path}/${name}.ramdisk > ${path}/${name}.ramdisk.gz


./mkbootimg.py --kernel ${path}/${name}.kernel --ramdisk ${path}/${name}.ramdisk.gz --base 0x0 --cmdline 'idle=halt notsc androidboot.hardware=sofiaboard apic=sofia nolapic_pm firmware_class.path=/system/vendor/firmware androidboot.selinux=disabled nolapic_timer x86_intel_xgold_timer=soctimer_only vmalloc=512m slub_max_order=0 uvcvideo.en_autosuspend=0 console=ttyFIQ0,115200n8 earlyprintk=xgold' --pagesize 4096 --kernel_offset ${kernel_addr} --ramdisk_offset ${ramdisk} --second ${path}/${name}.2stage --second_offset ${secstage} -o recovery_new.img

cat recovery_new.img > recovery_new_wextra.img
cat extra_blob.bin >> recovery_new_wextra.img
md5sum ${path}/${name}
md5sum recovery_new_wextra.img