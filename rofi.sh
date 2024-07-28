#!/bin/bash

# Directory containing your cheatsheets
CHEATSHEET_DIR="$HOME/cheatsheets"

# Use rofi to get the search query from the user
SELECTED_FILE=$(find $CHEATSHEET_DIR -name "*.md" | rofi -dmenu -i -p "Search Cheatsheets")

echo $SELECTED_FILE

if [ -n "$SELECTED_FILE" ]; then
    xed "$SELECTED_FILE"  # Replace 'gedit' with your preferred text editor
fi
