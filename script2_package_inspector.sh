#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Jitesh Goyal
# Course: Open Source Software

# --- Package ---
PACKAGE="git"

echo "======================================"
echo " FOSS Package Inspector"
echo "======================================"

# --- Check if package is installed (Debian/Ubuntu) ---
if dpkg -l | grep -qw "$PACKAGE"; then
    echo "$PACKAGE is installed."

    echo "------ Package Details ------"
    dpkg -l | grep -w "$PACKAGE"

    # Version
    VERSION=$(dpkg -l | grep -w "$PACKAGE" | awk '{print $3}')
    echo "Version: $VERSION"

else
    echo "$PACKAGE is NOT installed."
fi

echo "--------------------------------------"

# --- Case Statement (Philosophy Notes) ---
case $PACKAGE in
    git)
        echo "Git: a distributed version control system built for speed and collaboration."
        ;;
    httpd)
        echo "Apache: the web server that built the open internet."
        ;;
    mysql)
        echo "MySQL: open source at the heart of millions of applications."
        ;;
    vlc)
        echo "VLC: a media player that can play almost any format freely."
        ;;
    firefox)
        echo "Firefox: a browser promoting privacy and an open web."
        ;;
    *)
        echo "Unknown package: no description available."
        ;;
esac

echo "======================================"