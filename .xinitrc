xbindkeys

setxkbmap -option caps:escape
setxkbmap -option escape:caps

loadkeys uk

numlockx &

compton --no-fading-openclose &

while xsetroot -name " BAT: `cat /sys/class/power_supply/BAT0/capacity`% | CPU: `top -b -n 1 | grep Cpu | awk '{print 100-$8}'`% | MF: `free -h G --si | grep Mem | awk '{print $7}'` | DF: `df -H --total | grep total | awk '{print $4}'` | `date +%H:%M:%S` `date +%d/%m/%y` | `whoami`@`cat /etc/hostname` "
do
	sleep 1
done &

mons -s

sudo xset s off -dpms

xwallpaper --zoom "/home/ray/media/pics/papes/$(ls /home/ray/media/pics/papes/ | shuf -n 1)"

export _JAVA_AWT_WM_NONREPARENTING=1

exec dwm


