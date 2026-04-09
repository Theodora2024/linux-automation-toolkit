# Linux Automation Toolkit

## Overview
A collection of Bash scripts designed to automate essential DevOps tasks: system performance monitoring, data redundancy (backups), and real-time log analysis with automated alerting.

## Features
- **System Monitoring:** Tracks CPU, RAM, Disk, and Network usage.
- **Automated Backup:** Compresses data and cleans up archives older than 7 days.
- **Real-time Alerting:** Scans logs for critical errors and triggers notifications.

## Project Structure
- `system_info.sh`: Gathers and logs system health metrics.
- `backup_cleanup.sh`: Handles file compression and retention policies.
- `log_monitor.sh`: Passive listener for log errors (e.g., HTTP 500).
- `system-information.log`: Centralized log file for all script outputs.

---
## Installation & Setup

1. **Clone the repository:**
   ```bash
   git clone https://github.com
   cd linux-automation-toolkit


   1. Set Permissions:
   Ensure all scripts are executable:
   
   chmod +x *.sh
   
   2. Start the Cron Service (WSL Users):
   
   sudo service cron start
   
   

## Scripts Usage## 

1. System Information (system_info.sh)
Captures a real-time snapshot of system resources and appends them to the master log.

* Run: ./system_info.sh
* View Results: tail -f system-information.log

## 2. Backup & Cleanup (backup_cleanup.sh)
Backups the toolkit directory and automatically deletes backups older than 7 days to save disk space.

* Run: ./backup_cleanup.sh
* Automation: add the following to crontab -e:*
* * * * * /home/your-user/linux-automation-toolkit/backup_cleanup.sh

## 3. Log Monitor (log_monitor.sh)
Monitors logs in real-time for specific error codes (HTTP 500).

* Run: ./log_monitor.sh
* Demo Tip: Use tmux to watch this script in one pane while triggering errors in another.

## Requirements

* OS: Linux (Ubuntu/WSL recommended)
* Packages: mailutils (for email alerts), tmux (for multi-pane monitoring).

## Author
Theodora E.


**Would you like me to help you with the final `git` commands to upload this to your GitHub repository?**


