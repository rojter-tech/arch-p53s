#!/bin/bash
# Bose 700
DEVICE=60:AB:D2:28:37:60

echo "disconnect $DEVICE" | bluetoothctl
sleep 5

sudo systemctl restart bluetooth.service
sleep 5

echo "connect $DEVICE" | bluetoothctl

