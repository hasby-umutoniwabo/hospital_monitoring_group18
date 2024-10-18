Hospital Monitoring System
Overview
This project implements a data handling and monitoring system for heart rate data in a hospital environment. It consists of three main shell scripts that work together to log heart rate data, archive the logs, and securely back them up to a remote server.

Scripts
1. heart_rate_monitor.sh
Description: This script monitors heart rate data from a specified device, logging the data into a file (heart_rate_log.txt) every second.
Functionality:
Prompts the user for a device name (e.g., "Monitor_A").
Generates and logs simulated heart rate data with timestamps.
Runs in the background, allowing for continuous monitoring.
Usage: Run the script and provide the device name as input. Use tail -f heart_rate_log.txt to view the log in real time.
2. archive_log.sh
Description: This script archives the current heart rate log file by renaming it with a timestamp.
Functionality:
Renames heart_rate_log.txt to heart_rate_log.txt_YYYYMMDD_HHMMSS.
Ensures the active logging continues while archiving the old log.
Usage: Run the script after heart rate logging has started to archive the current log file.
3. backup_archives.sh
Description: This script moves archived log files to a designated directory and backs them up to a remote server via SSH.
Functionality:
Moves archived log files into a directory named archived_logs_group18.
Backs up the contents of this directory to a remote server using scp.
Usage: Run the script after archiving to secure the log files on a remote server.

Clone the repository git clone <repo_url> and navigate to hospital_monitoring_group18
Run the monitoring script: ./heart_rate_monitor.sh
After some time, run archive logs: ./archive_log.sh
Finally execute backup archived logs: ./backup_archives.sh

Collaborators/ Team: -Adeline Iradukunda
                     -Benigne Uwitonze
                     -Erica Ishimwe
                     -Emmanuel Nsabagasani
                     -Hannah Tuyishimire
                     -Hasbiyallah Umutoniwabo

This project serves as a practical implementation of shell scripting for monitoring and managing data in a healthcare setting. It demonstrates basic data logging, file manipulation, and secure data transfer techniques.
