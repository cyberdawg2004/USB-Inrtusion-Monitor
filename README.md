# USB Intrusion Monitor

![Status](https://img.shields.io/badge/Project-Active-brightgreen?style=flat-square)
![Linux](https://img.shields.io/badge/Linux-secure-blue?style=flat-square)
![Language](https://img.shields.io/badge/Bash-100%25-yellowgreen?style=flat-square)

##Overview

This project monitors USB device connections on a Linux Machine in real-time using 'udevadm' and Bash scripting.
It logs every insertion event, alerts the uservia terminal broadcast, and optionally plays a sound to notify about physical device activity.

##Tools & Technologies
- Bash Scripting 
- 'udevadm monitor'
- 'logger', 'wall' for system alerting
- 'aplay' for sound feedback

##How to Use
1. Clone or download this repository 
2. Make the script executable:
	'''bash
	chmod +x monitor_usb.sh
	chmod +x alert_sound.sh
3. Run the script
	sudo ./monitor_usb.sh
4. Save & Exit
- Press 'CTRL + O', then Enter
- Press 'CTRL + X' to exit
