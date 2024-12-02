#!/bin/bash

# Get a list of connected monitors
connected_outputs=$(hyprctl monitors all | grep "Monitor" | awk '{print $2}')

# Count the number of connected monitors
num_connected_outputs=$(echo "$connected_outputs" | wc -l)

echo "Number of connected monitors: $num_connected_outputs"

# Apply different monitor configurations dependent on how many and which monitors are connected

if [ "$num_connected_outputs" -eq 3 ]; then
	# Three monitors connected -> Desktop Setup
	echo "Three monitors connected -> Desktop Setup"
	cp ~/.config/hypr/monitor_configs/monitor_setup_desktop.conf ~/.config/hypr/monitor.conf

else
	# -> Defaul config
	echo "Defaul Configuration"
	cp ~/.config/hypr/monitor_configs/monitor_setup_default.conf ~/.config/hypr/monitor.conf

fi

hyprctl reload
