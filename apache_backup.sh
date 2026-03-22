#!/bin/bash
DATE=$(date +%F)
FILE="/backups/apache_backup_$DATE.tar.gz"

tar -czvf $FILE /etc/httpd /var/www/html 2>/dev/null

echo "VERIFY $DATE" >> /backups/apache_log.txt
tar -tzf $FILE >> /backups/apache_log.txt
