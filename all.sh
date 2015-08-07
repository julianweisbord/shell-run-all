#!/bin/bash
# User enters args for example ./all.sh adb reboot.
for device in $($1 devices | grep -v "List" | awk '{print $1}' );
  do
    $1 -s $device ${@:2} &
done;
