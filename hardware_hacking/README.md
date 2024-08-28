## Getting started

These notes are designed to be used in accompaniment with our slide presentation. Please see the slides for more detailed walk-through of where we use these scripts.

It is expected that these scripts may need minor modification even if you are using the same camera and firmware version. These are designed for reference and while they may work out of the box, we encourage you to write your own scripts to better suit your needs.


## Notes

* Remember to please backup your sysconfig files so you can fix the camera if you overwrite the serial number.

* Also, you can then make better use of our `initApp_gdb.sh` template which includes a copy command to reset the config.

* The `instructions.sh` file follows the second demo from the slides and boots your camera such that you have a root shell and a gdb session. This requires you to have a gdbserver binary in the appropriate format (in this case MIPSEL) to call and you will need to replace this binary in `initApp_gdb.sh` for this to function properly. Additionally, remember that the PIDs for the main process may change, and you will likely need to update these PIDs.

* The `min_ready.sh` file is the minimum required steps that we found to be able to establish persistence on the camera and have read write access with a root shell. This is designed to be a helper script for additional research and it is not needed for following along with the slides.

* Remember to please backup your sysconfig files so you can fix the camera if you overwrite the serial number.

* Also, you can then make better use of our `initApp_gdb.sh` template which includes a copy command to reset the config.
