#!/bin/bash
# Bose 700
DEVICE=EC:81:93:54:C7:C7

echo "disconnect $DEVICE" | bluetoothctl
sleep 5

sudo systemctl restart bluetooth.service
sleep 5

echo "connect $DEVICE" | bluetoothctl

