# Define the target file
#!/bin/bash
TARGET_FILE="$HOME/.config/starship.toml"

# Define the content to be written
CONTENT=$(cat <<EOF
# Get editor completions based on the config schema
"\$schema" = 'https://starship.rs/config-schema.json'

# Inserts a blank line between shell prompts
add_newline = true

# Replace the '❯' symbol in the prompt with '➜'
[character] # The name of the module we are configuring is 'character'
success_symbol = '[➜](bold green)' # The 'success_symbol' segment is being set to '➜' with the color 'bold green'

# Disable the package module, hiding it from the prompt completely
[package]
disabled = true
EOF
)

# Check if the target file exists
if [ -f "$TARGET_FILE" ]; then
    read -p "$TARGET_FILE already exists. Do you want to overwrite it? (y/n): " choice
    if [ "$choice" != "y" ]; then
        echo "Aborting."
        exit 1
    fi
fi

# Write the content to the target file
mkdir -p "$(dirname "$TARGET_FILE")"
echo "$CONTENT" > "$TARGET_FILE"

echo "Configuration written to $TARGET_FILE"

starship preset bracketed-segments -o ~/.config/starship.toml

BASH_PROFILE="$HOME/.bash_profile"
if ! grep -Fxq 'eval "$(starship init bash)"' "$BASH_PROFILE"; then
    echo 'eval "$(starship init bash)"' >> "$BASH_PROFILE"
    echo "Added 'eval \"\$(starship init bash)\"' to $BASH_PROFILE"
else
    echo "'eval \"\$(starship init bash)\"' already exists in $BASH_PROFILE"
fi

