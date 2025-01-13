#!/bin/bash
echo "System Report for $(uname -n)"
echo ""
echo "=====Available Resources======"
echo Memory usage: $(free -h | awk 'NR==2{print $2" total"}'), $(free -h | awk 'NR==2{print $4" available"}')
echo Disk usage: $(df -h /dev/sda1 | awk 'NR==2{print $3" used"}'), $(df -h /dev/sda1 | awk 'NR==2{print $4" available"}')
echo ""
