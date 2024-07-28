#!/bin/bash

# Directory containing your cheatsheets
CHEATSHEET_DIR="$HOME/cheatsheets"

# Create a temporary file to store search results
TEMP_RESULTS=$(mktemp)

# Function to update search results dynamically
update_results() {
    local query=$1
    if [ -n "$query" ]; then
        grep -rni "$query" "$CHEATSHEET_DIR" > "$TEMP_RESULTS"
    else
        echo "" > "$TEMP_RESULTS"
    fi
}

# Initial call to create an empty results file
update_results ""

# Launch rofi in combi mode, with a custom combi-entries script to update results dynamically
rofi -combi-modi window,run,drun,ssh,cheatsheet:"bash -c 'update_results {input}; cat $TEMP_RESULTS'" -show combi -modi combi -matching fuzzy

# Extract the selected result from the temporary file
SELECTED_RESULT=$(cat "$TEMP_RESULTS" | rofi -dmenu -i -p "Search Results")

# Clean up the temporary file
rm "$TEMP_RESULTS"

# Extract the file path from the selected result
SELECTED_FILE=$(echo "$SELECTED_RESULT" | awk -F: '{print $1}')

# Open the selected file in the text editor if a file was selected
if [ -n "$SELECTED_FILE" ]; then
    gedit "$SELECTED_FILE"  # Replace 'gedit' with your preferred text editor
fi

