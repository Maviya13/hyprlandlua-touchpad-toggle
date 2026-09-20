# Hyprland Touchpad Toggle

A simple Hyprland Lua configuration to toggle the touchpad using a custom keybind.

Tested on an Acer Predator PH16-71 where the built-in `Fn + F10` key did not expose a usable touchpad-toggle event under Hyprland.

## Setup

### 1. Find your touchpad device

Run:

```bash
hyprctl devices
````

Look under the `Touchpad` section and copy the exact device name.

For example:

```text
syna7db5:00-06cb:ceaf-touchpad
```

### 2. Update `hyprland.lua`

Open your Hyprland Lua configuration and replace the device name in the provided `hyprland.lua` if yours is different.

The keybind is:

```text
SUPER + F10
```

The configuration uses:

```lua
mainMod .. " + F10"
```

so it follows your existing `mainMod` setting.

### 3. Install `notify-send` (Optional)

The configuration uses `notify-send` to show whether the touchpad was enabled or disabled.

On Arch Linux:

```bash
sudo pacman -S libnotify
```

### 4. Reload Hyprland

After adding the configuration:

```bash
hyprctl reload
```

Press `SUPER + F10` to toggle the touchpad.

## Limitations

* The toggle state is stored only in memory while Hyprland is running.
* Restarting Hyprland resets the Lua variable.
* Rebooting the system also resets the toggle state.
* The configuration assumes the touchpad starts enabled.
* If the touchpad is disabled through another method, the Lua toggle state can become out of sync with the actual device state.

## Why this exists

On the tested Acer Predator PH16-71, `Fn + F10` generated only a normal `F10` key event and did not provide a usable touchpad-toggle event to Hyprland.

This configuration provides an alternative using Hyprland's Lua API and a custom keybind.
