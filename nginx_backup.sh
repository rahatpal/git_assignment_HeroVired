#!/bin/bash
DATE=$(date +%F)
FILE="/backups/nginx_backup_$DATE.tar.gz"

tar -czvf $FILE /etc/nginx /usr/share/nginx/html 2>/dev/null

echo "VERIFY $DATE" >> /backups/nginx_log.txt
tar -tzf $FILE >> /backups/nginx_log.txt
