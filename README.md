# 🌮 Tiling Tacos

> *Spice up your macOS window management with a conservative yabai + skhd setup that doesn't break things!*

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![macOS](https://img.shields.io/badge/macOS-13%2B-blue)](https://www.apple.com/macos/)

## 🚀 Quick Start

```bash
# Install dependencies
brew install koekeishiya/formulae/yabai koekeishiya/formulae/skhd

# Clone and setup
git clone https://github.com/dmisuk/tiling-tacos.git
cd tiling-tacos
./scripts/install.sh
```

**Most used shortcuts:**
- `Ctrl + Alt + hjkl` - Navigate windows  
- `Ctrl + Alt + f` - Toggle fullscreen
- `Ctrl + Alt + Return` - Open terminal

## 🎯 What's This About?

A **conservative**, **battle-tested** macOS tiling setup that:

- 🚫 **Doesn't break** macOS system features
- 🎮 **Doesn't conflict** with existing shortcuts  
- 🧘 **Doesn't require** disabling SIP
- 🌮 **Just works** out of the box!

Perfect for developers who want window tiling without the pain.

## ✨ Features

### 🪟 Smart Window Management
- Binary Space Partitioning (BSP) with clean 5px gaps
- Smart app rules (System Preferences, Finder stay unmanaged)
- Smooth animations that don't distract

### ⌨️ Safe Keyboard Shortcuts  
- `Ctrl + Alt` combinations that don't conflict with macOS
- Vim-style `hjkl` navigation
- One-handed shortcuts where possible

### 🛡️ Non-Intrusive Philosophy
- System apps remain floating
- Utility apps (1Password, Alfred) behave naturally  
- JetBrains dialogs work properly

## 🎮 All Keyboard Shortcuts

### Window Navigation
```
Ctrl + Alt + h/j/k/l        Focus window (left/down/up/right)
Ctrl + Alt + Shift + h/j/k/l    Move window
Ctrl + Cmd + h/j/k/l        Resize window
```

### Window States  
```
Ctrl + Cmd + f              Toggle fullscreen (yabai-style)
Ctrl + Cmd + t              Toggle float
Ctrl + Cmd + b              Balance space
Ctrl + Cmd + r              Rotate space
Ctrl + Alt + Space          Cycle layouts (BSP ↔ Stack)
```

### Quick Launch
```
Ctrl + Alt + Return         Open/Focus Terminal (Warp)
Ctrl + Alt + Shift + Return New Terminal window
Ctrl + Alt + c              Open/Focus VS Code
Ctrl + Alt + Cmd + r        Restart yabai + skhd
```

## 📦 What's Included

```
tiling-tacos/
├── configs/
│   ├── .yabairc       # Window manager config
│   └── .skhdrc        # Keyboard shortcuts
└── scripts/
    ├── install.sh     # Auto installer
    └── uninstall.sh   # Clean removal
```

## 🛠️ Manual Installation

```bash
# Install yabai and skhd
brew install koekeishiya/formulae/yabai
brew install koekeishiya/formulae/skhd

# Copy configurations
cp configs/.yabairc ~/.yabairc
cp configs/.skhdrc ~/.skhdrc

# Start services
yabai --start-service
skhd --start-service
```

## 🎨 Customization

### Change Gaps and Padding
Edit `~/.yabairc`:
```bash
window_gap                   10     # Change from 5 to 10
top_padding                  10     # Change from 5 to 10
```

### Add Your Own Shortcuts
Edit `~/.skhdrc`:
```bash
# Example: Open Chrome with Ctrl+Alt+G  
ctrl + alt - g : open -a "Google Chrome"
```

### Exclude More Apps
Add to `~/.yabairc`:
```bash
yabai -m rule --add app="^Your App$" manage=off
```

## 🐛 Troubleshooting

**Windows not tiling?**
```bash
# Check if services are running
brew services list | grep -E "(yabai|skhd)"

# Restart services
brew services restart yabai
brew services restart skhd
```

**Shortcuts not working?**
- Make sure skhd has accessibility permissions
- Go to System Settings → Privacy & Security → Accessibility
- Add skhd to the list

**Want to reset everything?**
```bash
./scripts/uninstall.sh
```

## 📋 Requirements

- macOS 13+ (Ventura or later)
- Homebrew
- Terminal app (works great with Warp, iTerm2, or default Terminal)

## 🤝 Contributing

Found a bug or want to add a feature? 

1. Fork the repo
2. Make your changes
3. Test it works
4. Submit a PR

## 📜 License

MIT License - use it, modify it, share it!

## 🙏 Thanks

- [koekeishiya](https://github.com/koekeishiya) for yabai and skhd
- macOS tiling community for inspiration

---

**Enjoy your new tiling setup!** 🌮✨

*Star this repo if it helped you!*