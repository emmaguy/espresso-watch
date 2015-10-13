#!/usr/bin/env bash

adb=$ANDROID_HOME/platform-tools/adb
devices=$($adb devices | grep -v 'List of devices' | cut -f1 | grep '.')

for device in $devices; do
    echo "Uninstalling Espresso watch app from device" $device
    $adb -s $device uninstall com.emmaguy.espressowatch

    echo "Uninstalling Espresso tests app from device" $device
    $adb -s $device uninstall com.emmaguy.espressowatch.test
done

java -jar spoon-runner-1.2.0-jar-with-dependencies.jar --apk app/build/outputs/apk/app-debug.apk --test-apk app/build/outputs/apk/app-debug-androidTest-unaligned.apk

echo "Done! Opening output"
open spoon-output/index.html