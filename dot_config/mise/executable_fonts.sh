#!/bin/bash

export LATEST="6.2"

# Set the URL for the latest Fira Code release
FIRA_CODE_URL="https://github.com/tonsky/FiraCode/releases/latest/download/Fira_Code_v$LATEST.zip"

# Destination directory
FONT_DIR="$HOME/Library/Fonts"

# Temporary directory for download
TEMP_DIR=$(mktemp -d)

# Download the latest Fira Code release
echo "Downloading Fira Code font..."
curl -L -o "$TEMP_DIR/FiraCode.zip" "$FIRA_CODE_URL"

# Unzip the downloaded file to the fonts directory
echo "Extracting fonts to $FONT_DIR..."
unzip -q "$TEMP_DIR/FiraCode.zip" -d "$FONT_DIR"

# Clean up
echo "Cleaning up temporary files..."
rm -rf "$TEMP_DIR"

echo "Fira Code font installed successfully!"