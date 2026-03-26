#!/bin/bash
# Script 4: Log File Analyzer
# Author: Jitesh Goyal
# Course: Open Source Software

# --- Input arguments ---
LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyword = error
COUNT=0

# --- Check if file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# --- Check if file is empty (do-while style retry) ---
while [ ! -s "$LOGFILE" ]; do
    echo "Warning: File is empty. Waiting for data..."
    sleep 2
done

echo "Analyzing file: $LOGFILE"
echo "Searching for keyword: $KEYWORD"
echo "--------------------------------------"

# --- Read file line by line ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Output result ---
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

echo "--------------------------------------"
echo "Last 5 matching lines:"

# Show last 5 matching lines
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo "======================================"