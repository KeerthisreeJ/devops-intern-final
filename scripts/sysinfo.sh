#!/bin/bash

echo "==================================="
echo "    SYSTEM INFORMATION REPORT"
echo "==================================="
echo ""
echo "Current User: $(whoami)"
echo "Current Date & Time: $(date)"
echo ""
echo "-----------------------------------"
echo "DISK USAGE:"
echo "-----------------------------------"
df -h
echo ""
echo "==================================="
