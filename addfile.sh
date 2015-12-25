#!/bin/bash
filename="$1"
transmission-edit -a udp://tracker.openbittorrent.com:80 $filename
transmission-edit -a udp://open.demonii.com:1337 $filename
transmission-edit -a udp://tracker.coppersurfer.tk:6969 $filename
transmission-edit -a udp://tracker.leechers-paradise.org:6969 $filename
