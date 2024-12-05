main=HDMI-A-1

udevadm monitor --udev --subsystem-match=drm | while read -r line; do
  if echo "$line" | grep -q "change"; then
    echo "monitors changed"
    count=$(hyprctl monitors -j | jq '.[].name' -r | wc -l)
    echo "$count devices available"
    if [[ "$((count))" -eq "1" ]]; then
      echo $main
      sleep 1
      sh ~/dotfiles/scripts/launch-eww.sh
    fi
  fi
done