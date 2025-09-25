#!/bin/bash

# 🌮 Tiling Tacos Uninstall Script

set -e

echo "🗑️  Uninstalling Tiling Tacos..."

# Stop services
echo "⏹️  Stopping services..."
yabai --stop-service 2>/dev/null || true
skhd --stop-service 2>/dev/null || true

# Remove config files
echo "🧹 Removing configuration files..."
rm -f ~/.yabairc
rm -f ~/.skhdrc

# Restore backups if they exist
if [ -f ~/.yabairc.backup ]; then
    echo "🔄 Restoring .yabairc backup"
    mv ~/.yabairc.backup ~/.yabairc
fi

if [ -f ~/.skhdrc.backup ]; then
    echo "🔄 Restoring .skhdrc backup"
    mv ~/.skhdrc.backup ~/.skhdrc
fi

echo ""
echo "✅ Tiling Tacos uninstalled!"
echo ""
echo "Note: yabai and skhd are still installed via brew."
echo "To remove them completely:"
echo "   brew uninstall yabai skhd"