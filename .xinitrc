xbindkeys

setxkbmap -option caps:escape

loadkeys uk

feh --bg-scale --randomize /home/ray/pics/papes/* &

compton --no-fading-openclose &

while xsetroot -name " Battery: `acpi | awk '{print $4}' | sed 's/,//g'` | CPU Usage: `top -b -n 1 | grep Cpu | awk '{print 100-$8}'`% | RAM Space: `free -h G --si | grep Mem | awk '{print $7}'` | Disk Space: `df -H --total | grep total | awk '{print $4}'` | `date +%H:%M:%S` `date +%d/%m/%y` | `whoami`@`cat /etc/hostname` "
do
	sleep 1
done &

exec dwm
