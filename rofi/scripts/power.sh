#!/usr/bin/env sh

HOST=$(hostnamectl hostname)
TIME=$(uptime -p | sed -r "s/[[:lower:] ]+//")

# Options
lock="" # 
boot="" # 
stay="" # 
shut="" # 

echo -en "\0prompt\x1f$USER@$HOST\n"
echo -en "\0message\x1f$TIME\n"

echo $lock
echo $stay
echo $boot
echo $shut

case $@ in
$lock) ;;
$boot)
	systemctl reboot
	;;
$stay)
	systemctl suspend
	;;
$shut)
	systemctl poweroff
	;;
esac
