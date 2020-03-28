xbindkeys

setxkbmap -option caps:escape

loadkeys uk

numlockx &

compton --no-fading-openclose &

while xsetroot -name " Battery: `acpi | awk '{print $4}' | sed 's/,//g'` | CPU Usage: `top -b -n 1 | grep Cpu | awk '{print 100-$8}'`% | RAM Space: `free -h G --si | grep Mem | awk '{print $7}'` | Disk Space: `df -H --total | grep total | awk '{print $4}'` | `date +%H:%M:%S` `date +%d/%m/%y` | `whoami`@`cat /etc/hostname` "
do
	sleep 1
done &

echo "* " > .plan

mons -s
xrandr --output HDMI1 --primary --mode 2560x1440

xwallpaper --zoom "/home/ray/pics/papes/$(ls /home/ray/pics/papes/ | shuf -n 1)"


exec dwm


