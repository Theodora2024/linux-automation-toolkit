#!/bin/bash

LOG_FILE="/var/log/syslog"
EMAIL="theodoraefreda2016@gmail.com"

echo "Monitoring started..."

sudo tail -Fn0 "$LOG_FILE" | grep --line-buffered "500" | while read line; do
    
    echo "🚨 ALERT: $line"

    echo "HTTP 500 Error detected on server:
    
$line

Time: $(date)" | mail -s "🚨 Server Alert: HTTP 500 Error" "$EMAIL"

done
