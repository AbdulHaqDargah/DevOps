#!/bin/bash

echo "===== BASIC HARDENING CHECK ====="
echo "User: $(whoami)"
echo "Date: $(date)"

echo ""
echo "Sensitive file permissions:"
ls -l sensitive.txt

echo ""
echo "Testing access as another user:"
sudo -u nobody cat sensitive.txt 2>/dev/null || echo "ACCESS BLOCKED (GOOD)"

echo ""
echo "Sudo group membership:"
id | grep sudo || echo "User is NOT in sudo group"

echo ""
echo "File ownership check:"
ls -l sensitive.txt | awk '{print $3 ":" $4}'

