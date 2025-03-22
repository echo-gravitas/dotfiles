#!/bin/bash

WALLPAPER_DIR="$HOME/.config/wallpapers/"

CURRENT_WALL=$(hyprctl hyprpaper listloaded)

WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

hyprctl hyprpaper reload ,"$WALLPAPER"
