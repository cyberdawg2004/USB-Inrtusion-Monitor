#!/bin/bash

LOGFILE="usb_log.txt"
ALERT=$(whoami)

echo "[+] USB Intrusion Monitor Started..."
echo "Monitoring started at $(date)" >> $LOGFILE
udevadm monitor --udev --subsystem-match=usb | while read line; do
	if [[ $line == *"add"* ]]; then
		echo "[!] USB device connected at $(date)" | tee -a $LOGFILE
		logger "[USB-INTRUSION] USB device connected at $(date)"
		wall "[!] USB device Connected on $(hostname) at $(date)"
		bash alert_sound.sh &
	fi
done
