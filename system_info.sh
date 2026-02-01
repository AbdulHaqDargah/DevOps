#!/bin/bash

echo "===== SYSTEM INFO ====="
echo "User: $(whoami)"
echo "Hostname: $(hostname)"
echo "Date: $(date)"

echo ""
echo "===== DISK USAGE ====="
df -h

echo ""
echo "===== MEMORY USAGE ====="
free -m

echo ""
echo "===== UPTIME ====="
uptime
