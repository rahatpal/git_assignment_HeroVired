#!/bin/bash

LOG_DIR="/var/log/system_monitor"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
LOG_FILE="$LOG_DIR/report_$DATE.log"

mkdir -p $LOG_DIR

echo "========================================" >> $LOG_FILE
echo "  SYSTEM MONITORING REPORT - $DATE"       >> $LOG_FILE
echo "========================================" >> $LOG_FILE

echo -e "\n--- CPU & MEMORY USAGE ---" >> $LOG_FILE
top -bn1 | head -20 >> $LOG_FILE

echo -e "\n--- DISK USAGE (df) ---" >> $LOG_FILE
df -h >> $LOG_FILE

echo -e "\n--- DIRECTORY SIZES (du) ---" >> $LOG_FILE
du -sh /home/* /var/www /etc 2>/dev/null >> $LOG_FILE

echo -e "\n--- TOP 10 CPU PROCESSES ---" >> $LOG_FILE
ps aux --sort=-%cpu | head -11 >> $LOG_FILE

echo -e "\n--- MEMORY DETAILS ---" >> $LOG_FILE
free -h >> $LOG_FILE

echo "Report saved to $LOG_FILE"
