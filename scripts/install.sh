#!/bin/bash

# 🌮 Tiling Tacos Installation Script

set -e

echo "🌮 Installing Tiling Tacos..."

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "❌ Homebrew not found. Please install it first:"
    echo "   /bin/bash -c \"\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\""
    exit 1
fi

# Install yabai, skhd, and jq if not already installed
echo "📦 Installing yabai, skhd, and jq..."
brew list yabai &>/dev/null || brew install koekeishiya/formulae/yabai
brew list skhd &>/dev/null || brew install koekeishiya/formulae/skhd
brew list jq &>/dev/null || brew install jq

# Backup existing configs if they exist
if [ -f ~/.yabairc ]; then
    echo "💾 Backing up existing .yabairc to .yabairc.backup"
    cp ~/.yabairc ~/.yabairc.backup
fi

if [ -f ~/.skhdrc ]; then
    echo "💾 Backing up existing .skhdrc to .skhdrc.backup"
    cp ~/.skhdrc ~/.skhdrc.backup
fi

# Copy configurations
echo "📋 Installing configurations..."
cp configs/.yabairc ~/
cp configs/.skhdrc ~/

# Make yabairc executable
chmod +x ~/.yabairc

# Start services
echo "🚀 Starting services..."
yabai --start-service
skhd --start-service

echo ""
echo "✅ Tiling Tacos installed successfully!"
echo ""
echo "🎮 Try these shortcuts:"
echo "   Ctrl + Alt + hjkl     - Navigate windows"
echo "   Ctrl + Alt + f        - Toggle fullscreen"
echo "   Ctrl + Alt + Return   - Open terminal"
echo ""
echo "📚 Check README.md for all shortcuts and customization options."
echo ""
echo "🌮 Enjoy your new tiling setup!"