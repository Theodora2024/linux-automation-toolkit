#!/bin/bash

# 1. Define the log file location once
LOGFILE="/home/dorah/linux-automation-toolkit/system-information.log"

# Add a visual separator and the current time
echo "==========================================" >> "$LOGFILE"
echo "Run time: $(date)" >> "$LOGFILE"
echo "------------------------------------------" >> "$LOGFILE"

# 2. RAM Usage (Human Readable)
echo "[RAM Usage]" >> "$LOGFILE"
free -h >> "$LOGFILE"
echo "" >> "$LOGFILE"

# 3. Disk Usage (Focus on the main system partition)
echo "[Disk Usage]" >> "$LOGFILE"
df -h / >> "$LOGFILE"
echo "" >> "$LOGFILE"

# 4. CPU Usage (Using the 2-iteration method for accuracy)
echo "[CPU Usage]" >> "$LOGFILE"
top -bn2 -d 0.5 | grep "Cpu(s)" | tail -n 1 | awk '{print "Current Load: " $2 + $4 "%"}' >> "$LOGFILE"
echo "" >> "$LOGFILE"

# 5. Network Usage (Shows total data sent/received)
echo "[Network Statistics]" >> "$LOGFILE"
# This shows stats for all interfaces; use 'ip -s link show eth0' for a specific one
ip -s link >> "$LOGFILE"
echo "" >> "$LOGFILE"
