#!/bin/bash

echo "===== LOG INSPECTOR (WSL VERSION) ====="
echo "Date: $(date)"
echo ""

echo "Available logs in /var/log:"
ls -1 /var/log

echo ""
echo "Last 20 lines of dpkg.log:"
sudo tail -n 20 /var/log/dpkg.log 2>/dev/null || echo "dpkg.log not readable"

echo ""
echo "Last 20 lines of ubuntu-advantage.log:"
sudo tail -n 20 /var/log/ubuntu-advantage.log 2>/dev/null || echo "ubuntu-advantage.log not readable"

echo ""
echo "Writing a test log entry..."
logger "Day 5 WSL automated log check"

echo ""
echo "Searching for my log message in /var/log:"
sudo grep -R "Day 5 WSL" /var/log 2>/dev/null || echo "Message likely went to system journal"

