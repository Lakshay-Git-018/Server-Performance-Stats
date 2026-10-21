
#!/bin/bash 

echo "=================================="
echo "     Server Performance Stats     "
echo "=================================="

echo ""
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)"

echo ""
echo "Memory Usage:"
free-h

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "System Uptime:"
uptime

echo ""
echo "Load Average:"
cat /proc/loadavg

echo ""
echo "Top 5 CPU Consuming Processes:"
ps -eo pid,comm,%cpu --sort=-%cpu |head -6

echo ""
echo "Top 5 Memory Consuming Processes:"
ps -eo pid,comm,%mem --sort=-%mem |head -6















