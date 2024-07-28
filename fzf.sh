#!/bin/bash

# Directory containing your cheatsheets
CHEATSHEET_DIR="$HOME/cheatsheets"

# Use fzf to search through all files and show matches dynamically
SELECTED_RESULT=$(grep -rni . "$CHEATSHEET_DIR" | fzf --delimiter=: --preview="echo {} | cut -d':' -f3-" --preview-window=down:3:wrap)

# Extract the file path from the selected result
SELECTED_FILE=$(echo "$SELECTED_RESULT" | cut -d':' -f1)

# Open the selected file in the text editor if a file was selected
if [ -n "$SELECTED_FILE" ]; then
    view "$SELECTED_FILE"  # Replace 'gedit' with your preferred text editor
fi

