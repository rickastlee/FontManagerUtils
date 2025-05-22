#!/usr/bin/bash
FONT_MANAGER="/data/adb/modules/fontmanager"
FONTS_DIR_1="$FONT_MANAGER/system/fonts"
FONTS_DIR_2="$FONT_MANAGER/system/product/fonts"

[ -z  "$TERMUX_VERSION" ] && echo "Only Termux is supported!" && exit 1
! su -c echo > /dev/null && echo "You must grant root access. Open the Magisk app to do so." && exit 1

for i in "$FONTS_DIR_1" "$FONTS_DIR_2"; do
	su -c "mount -o remount,rw / && cd $i && find -type f ! -name Roboto\* -exec rm {} \;"
done

read -p "A reboot is neccesary to apply changes. Do you wish to proceed? (y/n): " confirm
[ $confirm == "y" ] && su -c reboot
