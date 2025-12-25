#!/bin/bash

if ! "$(dirname "$0")/check_metered.sh"
then
    echo "$(date +'%d/%m/%Y %H:%M:%S') timer triggered" >> "$HOME/.config/rclone/rclone.log"
    "$(dirname "$0")/sync.sh"
fi
