#!/sbin/sh
ui_print "- Simple Disabling forceencrypt on Project Treble device -";
find /system/vendor/etc -name "fstab.*" -exec sed -i 's/forceencrypt/encryptable/g' {} +
find /system/vendor/etc -name "fstab.*" -exec sed -i 's/forcefdeorfbe/encryptable/g' {} +
find /system/vendor/etc -name "fstab.*" -exec sed -i 's/fileencryption/encryptable/g' {} +
ui_print "- Done. Check after reboot if the fstab.* file in /vendor/etc don't have forceencrypt string-";
