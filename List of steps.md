# git_assignment_HeroVired
# DevOps Assignment - Linux System Administration

## Task 1: System Monitoring Setup
- Installed `htop` for interactive process monitoring
- Used `df -h` for disk usage and `du -sh` for directory sizes
- Created `system_monitor.sh` to log CPU, memory, disk, and process metrics
- Scheduled via cron to run every hour

## Task 2: User Management and Access Control
- Created users `sarah` and `mike` with `adduser`
- Created isolated workspace directories with `chmod 700`
- Enforced 30-day password expiry using `chage -M 30`
- Verified with `chage -l sarah` and `chage -l mike`

## Task 3: Backup Configuration for Web Servers
- Created `apache_backup.sh` for Sarah's Apache server
  - Backs up `/etc/httpd/` and `/var/www/html/`
- Created `nginx_backup.sh` for Mike's Nginx server
  - Backs up `/etc/nginx/` and `/usr/share/nginx/html/`
- Backups saved to `/backups/` as `apache_backup_YYYY-MM-DD.tar.gz`
- Cron jobs scheduled every Tuesday at 12:00 AM
- Backup integrity verified via `tar -tzf`

## Cron Job Configuration
```
0 0 * * 2 /path/to/apache_backup.sh
0 0 * * 2 /path/to/nginx_backup.sh
```

## Verification
Backups confirmed working:
- apache_backup_2026-03-22.tar.gz ✅
- nginx_backup_2026-03-22.tar.gz ✅
