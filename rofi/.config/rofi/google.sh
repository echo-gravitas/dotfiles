#!/usr/bin/env bash

query=$(rofi -dmenu -p "Google")

if [ -n "$query" ]; then

    encoded_query=$(printf "%s" "$query" | jq -sRr @uri)

    xdg-open "https://www.google.ch/search?udm=14&newwindow=1&q=$encoded_query"

fi
