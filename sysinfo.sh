#!/bin/bash

echo -e "\nSystem Hostname:"
hostname

echo -e "\nOperating System:"
cat /etc/os-release | grep -E "^(PRETTY_NAME)=" | cut -d '"' -f 2

echo -e "\nSystem Uptime:"
uptime -p

echo -e "\nLinux Kernel Version:"
uname -r

echo -e "\nCPU Information:"
lscpu | grep -E "Model name|Architecture|CPU\(s\)|Thread|Core|Socket"

echo -e "\nMemory Information:"
free -h

echo -e "\nNetwork Interface Information:"
ip addr show

echo -e "\nFilesystem Utilization:"
df -hT

echo -e "\nLast 5 Error Messages:"
grep -iw "error" /var/log/syslog | tail -n 5