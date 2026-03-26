#!/bin/bash
# Script 1: System Identity Report
# Author: Jitesh Goyal
# Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Jitesh Goyal"
SOFTWARE_CHOICE="Git"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE_TIME=$(date)

# Get Linux distribution name
DISTRO=$(cat /etc/os-release | grep '^PRETTY_NAME=' | cut -d= -f2 | tr -d '"')

# --- Display ---
echo "=============================================="
echo " Open Source Audit — $STUDENT_NAME"
echo " Software Chosen: $SOFTWARE_CHOICE"
echo "=============================================="

echo "Linux Distribution : $DISTRO"
echo "Kernel Version     : $KERNEL"

echo "----------------------------------------------"
echo "Current User       : $USER_NAME"
echo "Home Directory     : $HOME_DIR"

echo "----------------------------------------------"
echo "System Uptime      : $UPTIME"
echo "Current Date/Time  : $DATE_TIME"

echo "----------------------------------------------"
echo "License Info:"
echo "This Linux system is based on open-source software,"
echo "primarily distributed under the GNU General Public License (GPL)."

echo "=============================================="