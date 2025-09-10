# System Monitoring Script

This repository contains a simple Bash script (`sysmon.sh`) I wrote to monitor basic system metrics and log them every 5 minutes. It’s meant to give a quick view of what’s happening on the machine without setting up heavy monitoring tools.

---

## What the script does
Every 5 minutes the script appends a new entry to `/var/log/sysmon.log` with:

- Memory usage (used and free, in MB)
- CPU usage (used % and idle %)
- Disk usage for the root partition
- Top 5 processes consuming the most memory
- Network interface information (currently set to `enp0s3`)

Each log entry is timestamped so you can easily trace when the data was collected.



[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/NENsd3bP)
[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-2e0aaae1b6195c2367325f4f02e2d04e9abb55f0b24a779b69b11b9e10269abc.svg)](https://classroom.github.com/online_ide?assignment_repo_id=20399439&assignment_repo_type=AssignmentRepo)
