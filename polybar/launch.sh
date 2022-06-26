#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar left 2>&1 | tee -a /tmp/polybarl.log & disown
polybar center 2>&1 | tee -a /tmp/polybarc.log & disown
polybar right 2>&1 | tee -a /tmp/polybarr.log & disown
echo "Polybar launched..."
