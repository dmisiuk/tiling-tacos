# 🌮 Tiling Tacos - WARP Documentation

## What is Tiling Tacos?

**Tiling Tacos** is a macOS window management configuration repository that provides a conservative, battle-tested setup using `yabai` (window manager) and `skhd` (hotkey daemon). 

### 🎯 Repository Purpose

This repository serves as a curated collection of configuration files and installation scripts that enable powerful window tiling on macOS without breaking system functionality or conflicting with existing shortcuts.

### 🏗️ Repository Structure

```
tiling-tacos/
├── configs/
│   ├── .yabairc       # Yabai window manager configuration
│   └── .skhdrc        # skhd keyboard shortcut definitions
├── scripts/
│   ├── install.sh     # Automated installation script
│   └── uninstall.sh   # Clean removal script
├── README.md          # Main documentation and usage guide
├── LICENSE           # MIT license
└── WARP.md           # This file - repository overview
```

### 🚀 Key Features

- **Conservative Approach**: Doesn't require disabling System Integrity Protection (SIP)
- **Safe Shortcuts**: Uses key combinations that don't conflict with macOS system shortcuts
- **Smart App Rules**: System apps remain unmanaged, utility apps behave naturally
- **Battle-Tested**: Configurations refined through real-world usage
- **Easy Installation**: One-command setup with automated scripts

### 🎮 Philosophy

The configurations follow a **"don't break things"** philosophy:
- System apps (Finder, System Preferences) stay floating
- Utility apps (1Password, Alfred, Raycast) remain unmanaged
- JetBrains IDE dialogs work properly
- No conflicts with common developer tools

### 🔄 Recent Updates (Latest)

#### Keyboard Shortcut Consistency Update
- **Changed**: Updated main window management shortcuts to use `Ctrl+Cmd` pattern
- **Before**: Mixed `Ctrl+Alt` and `Ctrl+Cmd` usage
- **After**: Consistent `Ctrl+Cmd` for all primary window operations

**Updated Shortcuts:**
- `Ctrl+Cmd+T` - Toggle float (was `Ctrl+Alt+T`)
- `Ctrl+Cmd+B` - Balance space (was `Ctrl+Alt+B`)  
- `Ctrl+Cmd+R` - Rotate space (was `Ctrl+Alt+R`)

This creates a unified pattern:
```bash
# Window Resize
Ctrl+Cmd+H/J/K/L - Resize windows
# Window Management  
Ctrl+Cmd+T - Toggle float
Ctrl+Cmd+B - Balance space
Ctrl+Cmd+R - Rotate space
```

### 🛠️ Technical Details

**Dependencies:**
- `yabai` - Window manager for macOS
- `skhd` - Simple hotkey daemon for macOS
- `jq` - JSON processor (for layout cycling)
- macOS 13+ (Ventura or later)

**Installation Method:**
1. Homebrew formula installation for dependencies
2. Configuration file copying to user home directory
3. Service activation via Homebrew services

### 🎯 Target Audience

- **Developers** who want efficient window management
- **Power users** seeking keyboard-driven workflows  
- **macOS users** who want tiling without system modifications
- **Anyone** tired of manually arranging windows

### 🔧 Customization

The repository is designed to be:
- **Forkable**: Easy to customize for personal needs
- **Modular**: Components can be modified independently
- **Extensible**: New shortcuts and rules can be added easily

### 📈 Usage Workflow

1. **Clone** the repository
2. **Run** the install script
3. **Grant** accessibility permissions to skhd
4. **Start** using keyboard shortcuts immediately
5. **Customize** as needed

### 🤝 Contributing

The repository welcomes contributions:
- Bug fixes and improvements
- Additional safe shortcut patterns
- Better app management rules
- Documentation enhancements

### 📝 Notes for WARP Users

This configuration works excellently with **Warp terminal**:
- `Ctrl+Alt+Return` opens/focuses Warp
- `Ctrl+Alt+Shift+Return` creates new Warp window
- No conflicts with Warp's built-in shortcuts
- Smooth integration with Warp's AI features

---

*This repository represents a curated, production-ready macOS tiling setup that prioritizes stability and usability over extensive customization.*