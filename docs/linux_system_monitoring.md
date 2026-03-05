# Linux System Performance Monitoring

This guide covers how to set up Windows-like system monitoring on Ubuntu (GNOME).

## Summary Table

| Feature | Tool | Shortcut / Access |
| :--- | :--- | :--- |
| **Main Interface** | GNOME System Monitor | `Ctrl+Shift+Esc` |
| **Tray Icons** | Vitals (GNOME Extension) | Top Panel |
| **Advanced CLI** | btop | Terminal (`btop`) |
| **Dock Alignment** | Dash to Panel | Absolute Centering |

## 1. Keyboard Shortcut (Ctrl+Shift+Esc)

The default task manager in Ubuntu is `gnome-system-monitor`. To map it to the familiar Windows shortcut:

1. Open **Settings** > **Keyboard** > **View and Customize Shortcuts**.
2. Select **Custom Shortcuts**.
3. Add a new shortcut:
    - **Name**: System Monitor
    - **Command**: `gnome-system-monitor`
    - **Shortcut**: `Ctrl+Shift+Esc`

## 2. Real-time Monitoring (Top Bar)

To see CPU, RAM, and Temperature at a glance in your top panel:

1. Install **Extension Manager**:
   ```bash
   sudo apt update && sudo apt install -y gnome-shell-extension-manager
   ```
2. Open **Extension Manager**.
3. Go to the **Browse** tab.
4. Search for and install **Vitals**.
5. Once active, your performance metrics will appear in the top panel.

## 3. High-Performance Terminal Monitor (btop)

If you prefer a terminal-based interface, `btop` is highly recommended for its visual aesthetics and detailed information.

### Installation
```bash
sudo apt install -y btop
```

### Usage
Run `btop` in any terminal. Use `q` or `Esc` to quit.

## 4. Centering the Dock (Windows 11 Style)

If the dock icons are shifted to the left, you can force them to stay in the exact center of the screen:

1. **Right-click** on any empty space in the taskbar.
2. Select **"Dash to Panel Settings"**.
3. Navigate to **Position** > **Taskbar Display**.
4. Set **"Center Taskbar"** to **Absolute**.

This ensures the dock uses the monitor's center point rather than centering relative to the available space between other elements.

## Resource Impact

These tools are designed to be lightweight:
- **Vitals**: Extremely low (~2-5MB RAM).
- **btop**: Low (~10-20MB RAM).
- **System Monitor**: Moderate (~40-80MB RAM), only while open.
