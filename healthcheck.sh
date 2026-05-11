#!/bin/bash

echo "================================"
echo "   SERVER HEALTH CHECK REPORT"
echo "================================"
echo ""

# Who and where
echo "User: $(whoami)"
echo "Location: $(pwd)"
echo "Date: $(date)"
echo ""

# Disk usage
DISK=$(df / | tail -1 | awk '{print $5}' | tr -d '%')
echo "Disk Usage: $DISK%"
if [ $DISK -gt 80 ]; then
    echo "   WARNING: Disk is almost full!"
else
    echo "   Disk is healthy"
fi
echo ""

# Memory usage
FREE=$(free -m | grep Mem | awk '{print $4}')
echo "Free Memory: ${FREE}MB"
if [ $FREE -lt 100 ]; then
    echo "   WARNING: Memory is low!"
else
    echo "   Memory is healthy"
fi
echo ""

# Top 3 running processes
echo "Top 3 Processes:"
ps aux --sort=-%cpu | awk 'NR==2,NR==4 {print "   → " $11}'
echo ""

echo "================================"
echo "   REPORT COMPLETE"
echo "================================"
