#!/bin/bash

# --- User-defined Variables ---
DBUSERNAME="root"
DBPASSWORD="EiEE3xgXWgbB8nUOMEeAUSDA"
HOST="172.21.151.111"
DB_NAME="webproducts"
BACKUP_DIRECTORY="/home/project/"

# --- Optional: Add this script to crontab if not already scheduled ---
CRON_JOB="0 23 * * * /home/project/exercise_4_mysql_backup.sh"
(crontab -l 2>/dev/null | grep -F "$CRON_JOB") || (crontab -l 2>/dev/null; echo "$CRON_JOB") | crontab -


# --- Generate the backup filename with current date ---
CURRENT_DATE=$(date +%F)  # Format: YYYY-MM-DD
BACKUP_FILE="${BACKUP_DIRECTORY}/webproducts_backup_${CURRENT_DATE}.sql"

# --- Create the backup directory if it doesn't exist ---
mkdir -p "$BACKUP_DIRECTORY"

# --- Perform the database backup ---
mysqldump -u "$DBUSERNAME" -p"$DBPASSWORD" -h "$HOST" "$DB_NAME" > "$BACKUP_FILE"

# --- Print status ---
if [ $? -eq 0 ]; then
    echo "Backup successful: $BACKUP_FILE"
else
    echo "Backup failed"
    exit 1
fi
