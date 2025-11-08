#!/bin/bash

LOG_FILE="/var/log/syslog"

echo "Monitoring log file for errors and warnings..."
grep -Ei "error|warning|fail" "$LOG_FILE" > /tmp/log_report.txt

if [[ -s /tmp/log_report.txt ]]; then
    echo "⚠ Log issues found:"
    cat /tmp/log_report.txt
else
    echo "✅ No major log issues detected."
fi
