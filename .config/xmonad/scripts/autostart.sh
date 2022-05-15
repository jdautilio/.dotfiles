# Set wallpaper
feh --bg-fill ~/Dropbox/wpps/arch-mac.jpg &
# variety &

# Run Polybar
/home/joel/.config/polybar/launch.sh &

# Keyboard layout
setxkbmap -layout us -variant altgr-intl

# Run applications
dropbox &
nm-applet &
picom --experimental-backends -b &
blueberry-tray &
xfce4-power-manager &
dunst &
