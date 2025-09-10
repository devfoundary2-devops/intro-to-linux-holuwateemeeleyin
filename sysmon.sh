#!/bin/env bash

while true; do
  echo "---Time: $(date) ---" >> /var/log/sysmon.log
  
  #For Memory Usage
  echo "MEMORY USAGE:" >> /var/log/sysmon.log
  free -m | awk '/Mem:/ {print "Used: " $3"MB, Free: " $4 "MB"}' >> /var/log/sysmon.log
  
  #For CPU Usage
  echo "CPU USAGE: " >> /var/log/sysmon.log
  mpstat 1 1 | awk '/Average:/ && $2 ~ /all/ {print "CPU Used: " 100 - $12 "%, Idle: " $12 "%"}' >> /var/log/sysmon.log
  
  #For Disk Usage
  echo "DISK USAGE:" >> /var/log/sysmon.log
  df -h / | awk 'NR==2 {print "Used: " $3 ", Free: " $4}' >> /var/log/sysmon.log

  # Top 5 processes by Memory
  echo "TOP 5 PROCESSES BY MEMORY:" >> /var/log/sysmon.log
  ps -eo pid,comm,%cpu,%mem --sort=-%mem | head -n 6 >> /var/log/sysmon.log

  echo "NET:" >> /var/log/sysmon.log
  ip link | grep enp0s3 >> /var/log/sysmon.log
  sleep 300
done