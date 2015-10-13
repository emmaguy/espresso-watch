#!/usr/bin/env bash
java -jar spoon-runner-1.2.0-jar-with-dependencies.jar --apk app/build/outputs/apk/app-dev-debug.apk --test-apk app/build/outputs/apk/app-dev-debug-androidTest-unaligned.apk

echo "Done! Opening output"
open spoon-output/index.html