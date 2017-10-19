# joyingsofia
Testing of a recovery partition mod for JY-UL135N2

recovery_new_keys.img contains the new recovery image with the keys changed.  You would upload it to the sdcard using abd and flash it using.

<strong>dd if=/sdcard/recovery_new_keys.img of=/dev/block/mmcblk0p10</strong>

After that is flashed you can copy these files to the root of a usb stick or sdcard and adb reboot recovery to launch TWRP.

<ul>
<li>5009_60.zip</li>
<li>Allapp.pkg</li>
<li>SQLSOFIA</li>
<li>config.txt</li>
<li>crruptoff</li>
<li>customercfg.txt</li>
<li>gtsql_config</li>
<li>rksofiacfg.cfg</li>
</ul>

I have noticed a few times where it would launch recovery and hang at the android.  When this happens I have to kill ACC and wait until the MCU kills power.  You can see the sceeen flickering with Joying when this happens. After that you can turn ACC back on and it should boot normal.  I'm still working on why this is happening.
