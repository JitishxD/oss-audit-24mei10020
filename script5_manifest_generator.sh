#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Jitesh Goyal
# Course: Open Source Software

echo "======================================"
echo " Open Source Manifesto Generator"
echo "======================================"
echo "Answer three questions to generate your manifesto."
echo ""

# --- User Input ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. What does "freedom" mean to you, in one word? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Date and Output File ---
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# --- Manifesto Content ---
echo "--------------------------------------" > "$OUTPUT"
echo "Open Source Manifesto" >> "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "--------------------------------------" >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "The power of open collaboration is embodied by $TOOL, which I use on a daily basis." >> "$OUTPUT"
echo "To me, freedom entails $FREEDOM—the unrestricted capacity to learn, adapt, and share." >> "$OUTPUT"
echo "I would create $BUILD and make it available as open source if I had the chance." >> "$OUTPUT"
echo "I think it's important to contribute to a community where innovation is shared and knowledge is easily accessible." >> "$OUTPUT"

echo "" >> "$OUTPUT"
echo "--------------------------------------" >> "$OUTPUT"

# --- Alias concept (demonstration in comment) ---
# Example: alias ll='ls -la'  (This creates a shortcut command in Linux)

# --- Output ---
echo ""
echo "Manifesto saved to $OUTPUT"
echo "--------------------------------------"
cat "$OUTPUT"
echo "======================================"