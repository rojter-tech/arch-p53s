#!/bin/bash
# Bose 700
DEVICE=4C:87:5D:A6:9B:5A

echo "disconnect $DEVICE" | bluetoothctl
sleep 5

sudo systemctl restart bluetooth.service
sleep 10

echo "connect $DEVICE" | bluetoothctl
sleep 5

echo "pair $DEVICE" | bluetoothctl
sleep 5

echo "trust $DEVICE" | bluetoothctl
