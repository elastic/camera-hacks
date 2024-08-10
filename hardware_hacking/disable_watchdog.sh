#!/bin/sh

while true; do
    echo 'V' > /dev/watchdog0
    echo 'V' > /dev/watchdog
    sleep 0.3
done
