#!/sbin/sh
find /system/vendor/etc -name "fstab.*" -exec sed -i 's/forceencrypt/encryptable/g' {} +
find /system/vendor/etc -name "fstab.*" -exec sed -i 's/forcefdeorfbe/encryptable/g' {} +
find /system/vendor/etc -name "fstab.*" -exec sed -i 's/fileencryption/encryptable/g' {} +
