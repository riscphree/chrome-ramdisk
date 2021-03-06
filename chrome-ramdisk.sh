#!/bin/bash

# path to folder /Volumes/Ramdisk/Default
RAMDISKFOLDER="$1"

if [ $# -lt 1 ]; then
        echo "Usage: chrome-ramdisk RAMDISKFOLDERPATH"
        exit 1
fi

rm -rf ~/Library/Caches/Google/Chrome/*
ln -s "$RAMDISKFOLDER" ~/Library/Caches/Google/Chrome/Default
# cp com.runoncoffee.ChromeRamDisk.plist ~/Library/LaunchAgents

exit 0