#!/bin/bash

cd openwrt

cat > .config <<-EOF
## target
CONFIG_TARGET_x86=n
CONFIG_TARGET_x86_64=y
CONFIG_TARGET_x86_64_DEVICE_generic=y

## File System
CONFIG_PACKAGE_fdisk=y
CONFIG_PACKAGE_kmod-fs-exfat=y
CONFIG_PACKAGE_kmod-fs-ext4=y
CONFIG_PACKAGE_kmod-fs-vfat=y

## Language
CONFIG_PACKAGE_kmod-nls-cp936=y

EOF

cd ..
