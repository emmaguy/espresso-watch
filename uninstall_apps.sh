#!/usr/bin/env bash

adb=$ANDROID_HOME/platform-tools/adb
devices=$($adb devices | grep -v 'List of devices' | cut -f1 | grep '.')

for device in $devices; do
    echo "Uninstalling Espresso watch app from device" $device
    $adb -s $device uninstall com.emmaguy.espressowatch

    echo "Uninstalling Espresso tests app from device" $device
    $adb -s $device uninstall com.emmaguy.espressowatch.test
done