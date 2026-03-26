#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Jitesh Goyal
# Course: Open Source Software

# --- Directories to check ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "======================================"
echo " Directory Audit Report"
echo "======================================"

# --- Loop through directories ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "--------------------------------------"

# --- Git Config Check ---
GIT_CONFIG="$HOME/.gitconfig"

echo "Git Configuration Check:"
if [ -f "$GIT_CONFIG" ]; then
    PERMS=$(ls -l "$GIT_CONFIG" | awk '{print $1, $3, $4}')
    SIZE=$(du -h "$GIT_CONFIG" | cut -f1)
    echo "$GIT_CONFIG exists."
    echo "Permissions: $PERMS | Size: $SIZE"
else
    echo "$GIT_CONFIG does not exist."
fi

echo "======================================"