#!/bin/bash

local_dir=$HOME/gdrive
remote_dir=gdrive:/

echo "$(date +'%d/%m/%Y %H:%M:%S') Sync started" >> "$HOME/.config/rclone/rclone.log"

rclone bisync \
  "$remote_dir" "$local_dir" \
  --compare size,modtime,checksum \
  --modify-window 1s \
  --create-empty-src-dirs \
  --drive-acknowledge-abuse \
  --drive-skip-gdocs \
  --drive-skip-shortcuts \
  --drive-skip-dangling-shortcuts \
  --metadata \
  --log-file "$HOME/.config/rclone/rclone.log" \
  --track-renames \
  --fix-case \
  --resilient \
  --recover \
  --max-lock 2m \
  --check-access

if [ $? -eq 0 ]; then
  echo "$(date +'%d/%m/%Y %H:%M:%S') Sync done" >> "$HOME/.config/rclone/rclone.log"
else
  echo "$(date +'%d/%m/%Y %H:%M:%S') Sync failed" >> "$HOME/.config/rclone/rclone.log"
fi
