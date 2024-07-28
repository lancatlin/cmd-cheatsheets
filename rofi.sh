#!/bin/bash

# Directory containing your cheatsheets
CHEATSHEET_DIR="$HOME/cheatsheets"

# Use rofi to get the search query from the user
SEARCH_QUERY=$(rofi -dmenu -i -p "Search Cheatsheets")

# If the user entered a search query, perform the search
if [ -n "$SEARCH_QUERY" ]; then
    # Perform the search and store results
    SEARCH_RESULTS=$(grep -rni "$SEARCH_QUERY" "$CHEATSHEET_DIR" --include "*.md")

    # Display the search results in rofi and get the selected line
    SELECTED_RESULT=$(echo "$SEARCH_RESULTS" | rofi -dmenu -i -p "Search Results")

    # Extract the file path from the selected result
    SELECTED_FILE=$(echo "$SELECTED_RESULT" | awk -F: '{print $1}')

    # Open the selected file in the text editor if a file was selected
    if [ -n "$SELECTED_FILE" ]; then
        xed "$SELECTED_FILE"  # Replace 'gedit' with your preferred text editor
    fi
fi

