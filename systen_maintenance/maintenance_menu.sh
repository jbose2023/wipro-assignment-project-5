#!/bin/bash

while true; do
    echo ""
    echo "===== System Maintenance Menu ====="
    echo "1. Run Backup"
    echo "2. System Update & Cleanup"
    echo "3. Check System Logs"
    echo "4. Exit"
    echo -n "Enter your choice: "
    read choice

    case $choice in
        1) bash backup.sh ;;
        2) bash update_cleanup.sh ;;
        3) bash log_monitor.sh ;;
        4) echo "Exiting..."; exit ;;
        *) echo "Invalid choice. Try again." ;;
    esac
done
