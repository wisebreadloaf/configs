#!/bin/sh

# Check for updates
updates=$(apt list --upgradable 2>/dev/null | wc -l)

if [ "$updates" -gt 0 ]; then
   echo "󱧕 $updates"
else
   echo "| 󱧕 0"
fi

