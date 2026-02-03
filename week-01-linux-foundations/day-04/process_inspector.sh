#!/bin/bash

echo "===== PROCESS INSPECTION ====="
echo "Date: $(date)"
echo ""

echo "Top 10 processes:"
ps aux | head -n 10

echo ""
echo "Your processes only:"
ps -u $(whoami)

echo ""
echo "Starting a test process..."
sleep 300 &

PID=$!
echo "Started sleep process with PID: $PID"

echo "Waiting 2 seconds..."
sleep 2

echo "Killing process $PID"
kill $PID

echo "Check if process is gone:"
ps aux | grep sleep | grep -v grep

