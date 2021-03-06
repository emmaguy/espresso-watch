Espresso Watch
==============

Testing espresso on an android wear watch app.

The app has a blank wear activity with the default text 'hello round world' or 'hello square world' text on the layout file for the appropriate screen shape.

A single espresso test case verifies that the text matches 'hello square world' - thus, it passes on square watches and fails on round ones.

# Run with Spoon

[Spoon](http://square.github.io/spoon/) lets you run tests on multiple devices simultaneously.

`./run_spoon`

![spoon screenshot](spoon-execution.png)

# Notes

To turn off system animations and avoid flakiness/this error:

`android.support.test.espresso.NoActivityResumedException: No activities in stage RESUMED. Did you forget to launch the activity. (test.getActivity() or similar)?`

Run this script:

`./set_animation_permissions.sh com.emmaguy.espressowatch`