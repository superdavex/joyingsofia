# joyingsofia
Testing of a recovery partition mod for JY-UL135N2

Changes: Added USB network adb support to the update script.  If USb network adapter is connected it's ip is set to 192.168.2.1.

Recovery_partition/recovery_new_keys.img contains the new recovery image with the keys changed.  You would upload it to the sdcard using abd and flash it using.

<strong>dd if=/sdcard/recovery_new_keys.img of=/dev/block/mmcblk0p10</strong>

After that is flashed you can copy the files in TWRP_recovery_boot to the root of a usb stick or sdcard and adb reboot recovery to launch TWRP.  These files are the minimum files needed to get the update zip to execute.

<ul>
<li>5009_60.zip, contains killrecovery script that does setup and launches TWRP</li>
<li>SQLSOFIA, needed but can be blank</li>
<li>config.txt, might not be needed but useful for insuring adb is set to tcpip</li>
<li>customercfg.txt, sets backlight to visible levels</li>
<li>gtsql_config, needed.  Gives signature error if blank</li>
</ul>

I have noticed a few times where it would launch recovery and hang at the android.  Restarting usually corrects it.


</strong>To enter Recovery </strong>
1. adb reboot recovery from android always works.

2. From off or recovery
Insert USB with update.
Hold power and then hit reset.  Keep holding power until pink lights come on and off and then let go of power.
Lights will then go on and off 4 times and then go blue, the Joying logo with 3 boot failure message will appear and recovery will launch.

Note: From android you need to hit reset, let it flash blue, and then hit reset again. Do this until it gets to pink.

Note 2: To exit recovery pull the USB stick and reboot or reset. It will give the 3 time fail message and restart.


