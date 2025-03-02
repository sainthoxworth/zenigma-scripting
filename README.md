# zenigma-scripting

Zenigma scripting assignment for DevOps assessment.

## Project Description

This project contains scripts for the Zenigma DevOps assessment. The scripts manage log files by appending data and handling file conditions.

## Installation Instructions

1. **Requirements**:
   - Bash shell
   - Cron (for scheduled tasks)

2. **Running the Scripts**:
   - Run the `zenigma.sh` script in the background:
     ```bash
     nohup bash /path/to/zenigma.sh > nohup.out 2>&1 &
     ```
   - Set up `killer.sh` as a cron job:
     ```bash
     crontab -e
     ```
     and add the following line:
     ```bash
     */5 * * * * /bin/bash /path/to/killer.sh
     ```

## Usage

- **zenigma.sh**: Appends "Hello Zenigma!" to the `zenigma.log` file every 15 seconds.
- **killer.sh**: Checks the line count in `zenigma.log`, deletes the file if 20 or more lines, and restarts `zenigma.sh`.

## Commands

- **Monitor Log File**:
  ```bash
  tail -f /tmp/zenigma.log
