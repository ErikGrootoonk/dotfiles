#!/bin/bash

# File path to check
FILE="$HOME/downloads/nvim-linux-x86_64.tar.gz"

# Check if file exists
if [ -f "$FILE" ]; then
    echo "Found $FILE"
    echo "Deleting file..."
    rm "$FILE"
fi

curl -L https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz -O --output-dir ~/downloads

sudo rm -rf /opt/nvim-linux-x86_64

sudo tar -C /opt -xzf $FILE
