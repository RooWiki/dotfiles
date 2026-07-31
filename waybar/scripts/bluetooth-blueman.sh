#!/bin/bash

status=$(bluetoothctl show | grep "Powered" | awk '{print $2}')
connected=$(bluetoothctl info | grep "Name" | awk '{print substr($0, index($0,$2))}')

if [ "$status" = "yes" ]; then
    if [ -n "$connected" ]; then
        echo "{\"text\": \" $connected\", \"class\": \"connected\"}"
    else
        echo "{\"text\": \"\", \"class\": \"enabled\"}"
    fi
else
    echo "{\"text\": \"\", \"class\": \"disabled\"}"
fi
