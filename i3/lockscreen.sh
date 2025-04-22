#!/bin/zsh

# Optional: Take a screenshot and blur it for the background
screenshot="/tmp/screen.png"
maim "$screenshot"
convert "$screenshot" -scale 10% -blur 8x8 -scale 1000% "$screenshot"

# Lock the screen with i3lock, using the blurred screenshot as background
i3lock -i "$screenshot"

# Clean up the screenshot file
rm "$screenshot"
