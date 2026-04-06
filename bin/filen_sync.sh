#!/bin/bash

while read src dst; do
  rclone sync "$src" "$dst" --backup-dir FilenRemote:/backup --checksum --exclude-from "/home/alex/.config/filen/ignorelist"
done < "/home/alex/.config/filen/pairs"
