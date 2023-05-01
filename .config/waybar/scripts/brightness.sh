#!/usr/bin/env bash

icons_dir="$HOME/.config/waybar/icons/"

# Get brightness
get_backlight() {
	LIGHT=$(printf "%.0f\n" $(brightnessctl i))
	echo "${LIGHT}%"
}

# Get icons
get_icon() {
	backlight="$(brightnessctl g)"
	current="${backlight%%%}"
	if [[ ("$current" -ge "0") && ("$current" -le "212") ]]; then
		icon="$icons_dir/brightness-20.png"
	elif [[ ("$current" -ge "212") && ("$current" -le "424") ]]; then
		icon="$icons_dir/brightness-40.png"
	elif [[ ("$current" -ge "424") && ("$current" -le "636") ]]; then
		icon="$icons_dir/brightness-60.png"
	elif [[ ("$current" -ge "636") && ("$current" -le "848") ]]; then
		icon="$icons_dir/brightness-80.png"
	elif [[ ("$current" -ge "848") && ("$current" -le "1060") ]]; then
		icon="$icons_dir/brightness-100.png"
	fi
}

# Notify
notify_user() {
  notify-send -h string:x-canonical-private-synchronous:sys-notify -u low -i "$(get_icon)" "Brightness : $(brightnessctl g)"
}

# Increase brightness
inc_backlight() {
	brightnessctl set 10%+ && get_icon && notify_user
}

# Decrease brightness
dec_backlight() {
	brightnessctl set 10%- && get_icon && notify_user
}

# Execute accordingly
if [[ "$1" == "--get" ]]; then
	brightnessctl g
elif [[ "$1" == "--inc" ]]; then
	inc_backlight
elif [[ "$1" == "--dec" ]]; then
	dec_backlight
else
	get_backlight
fi
