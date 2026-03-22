#!/bin/bash

DATE=$(date +"%Y-%m-%d")
BACKUP_FILE="/backups/apache_backup_$DATE.tar.gz"
LOG_FILE="/backups/apache_backup_$DATE.log"

echo "===== Apache Backup Started: $(date) =====" > $LOG_FILE

tar -czf $BACKUP_FILE /etc/httpd/ /var/www/html/ 2>> $LOG_FILE

if [ $? -eq 0 ]; then
    echo "Backup successful: $BACKUP_FILE" >> $LOG_FILE
else
    echo "ERROR: Backup failed!" >> $LOG_FILE
fi

echo -e "\n--- Backup Contents ---" >> $LOG_FILE
tar -tzf $BACKUP_FILE >> $LOG_FILE

echo "===== Apache Backup Completed: $(date) =====" >> $LOG_FILE

