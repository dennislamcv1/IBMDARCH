#!/bin/bash

# --- User-defined Variables ---
DBUSERNAME="your_mysql_username"
DBPASSWORD="your_mysql_password"
HOST="localhost"
DB_NAME="webproducts"
BACKUP_DIRECTORY="/path/to/your/backup/directory"

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
