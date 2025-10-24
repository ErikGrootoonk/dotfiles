#!/bin/bash

# Get currently installed version
current_version=$(nvim --version | head -n1 | awk '{print $2}'|sed 's/^v//')

# Get latest version from GitHub
latest_version=$(curl -s https://api.github.com/repos/neovim/neovim/releases/latest | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/' | sed 's/^v//')

echo "Currently installed: v$current_version"
echo "Latest on GitHub: v$latest_version"

if [ "$current_version" = "$latest_version" ]; then
    echo "✓ You're already on the latest version!"
else
    echo "→ Update available!"

    # install NeoVim
    if [ -f  nvim-linux-x86_64.tar.gz ]; then
        rm nvim-linux-x86_64.tar.gz
    else
        echo "nvim-linux-x86_64.tar.gz not found, nothing to remove"
    fi
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
    sudo rm -rf /opt/nvim-linux-x86_64.tar.gz
    sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

fi

