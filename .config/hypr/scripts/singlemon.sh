monitors_json=$(hyprctl monitors -j)
monitors=($(echo $monitors_json | jq -r '.[] | select(.disabled == false) | .name'))
monitor=${monitors[1]}

for ((i = 1; i <= 10; i++)); do
  echo "Moving workspace $i to $monitor"
  hyprctl keyword workspace "$i, monitor:$monitor" > /dev/null
  hyprctl dispatch moveworkspacetomonitor $i $monitor > /dev/null
done
