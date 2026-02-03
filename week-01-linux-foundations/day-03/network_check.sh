#!/bin/bash

echo "===== NETWORK CHECK ====="
echo "Date: $(date)"
echo ""

echo "IP ADDRESSES:"
ip addr | grep inet

echo ""
echo "DEFAULT ROUTE:"
ip route

echo ""
echo "INTERNET TEST:"
ping -c 2 google.com >/dev/null && echo "Internet: OK" || echo "Internet: FAIL"

echo ""
echo "LISTENING PORTS:"
sudo netstat -tulnp

