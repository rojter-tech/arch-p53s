#!/bin/bash
# Bose
DEVICE=28:11:A5:DD:80:23
echo "disconnect $DEVICE" | bluetoothctl
sleep 5
sudo systemctl restart bluetooth.service
sleep 10
echo "pair $DEVICE" | bluetoothctl
sleep 5
echo "trust $DEVICE" | bluetoothctl
sleep 5
echo "connect $DEVICE" | bluetoothctl
