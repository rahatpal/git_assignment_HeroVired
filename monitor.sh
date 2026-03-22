#!/bin/bash
LOGFILE="monitor.log"

echo "===== REPORT =====" >> $LOGFILE
date >> $LOGFILE

echo "CPU + MEMORY" >> $LOGFILE
top -b -n1 | head -10 >> $LOGFILE

echo "DISK" >> $LOGFILE
df -h >> $LOGFILE

echo "TOP PROCESSES" >> $LOGFILE
ps aux --sort=-%cpu | head >> $LOGFILE

echo "===============" >> $LOGFILE
