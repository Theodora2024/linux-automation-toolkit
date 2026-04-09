#!/bin/bash

SOURCE_DIR=~/linux-automation-toolkit
BACKUP_DIR=~/backups
DATE=$(date +%F)

# Backup
tar -czf $BACKUP_DIR/backup-$DATE.tar.gz $SOURCE_DIR

echo "Backup completed: backup-$DATE.tar.gz"

# ADD THE SIZE CHECK HERE
echo "Backup size:"
du -sh "$BACKUP_DIR/backup-$DATE.tar.gz"

# Cleanup (delete backups older than 7 days)
find "$BACKUP_DIR" -type f -name "backup-*.tar.gz" -mtime +7 -delete

echo "Old backups deleted"
