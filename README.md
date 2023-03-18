# Hyprland Installer

 > :warning: **WARNING:** This script is still being created so use with caution and expect some issues. 


# Table of contents
1. [What is Hyprland?](#about)
2. [What is Hyprland installer?](#aboutinstall)
3. [Instalation](#instalation)
4. [Configuration](#config)



# What is Hyprland <a name="about">

<br>

Hyprland is a dynamic tiling Wayland compositor based on wlroots that doesn't sacrifice on its looks.

It supports multiple layouts, fancy effects, has a very flexible IPC model allowing for a lot of customization, a powerful plugin system and more.
<br>
<br>

Hyprland is still in pretty early development compared to some other Wayland compositors.

Although Hyprland is pretty stable, it may have some bugs.

## Features

- Easily expandable and readable codebase
- Plugin support
- Config reloaded instantly upon saving
- Custom bezier curve based animations
- Dual Kawase blur
- Drop shadows
- Rounded corners
- Gradient borders
- Fully dynamic workspaces
- Closely follows `wlroots-git`
- Global keybinds passed to your apps of choice
- A lot of customization
- Bundled wlroots
- Window/layer fade in/out
- Tiling/pseudotiling/floating/fullscreen windows
- Switching workspaces between window modes on the fly
- Special workspaces (scratchpads)
- Window/monitor rules
- Socket-based IPC
- `wlr_ext` workspaces protocol support
- Event system for bash scripts
- Full damage tracking
- Docks support
- Drawing tablet support
- Native IME + Input panels support
- and much more...
<br>

Resorce [hyprland](https://github.com/hyprwm/Hyprland)


# What is Hyprland installer <a name="aboutinstall">
<br>

Hyprland installer is a set of scripts that make the install process easier and quicker. 
The aim of Hyprland install is to be able to go from a "clean" install, to a fully 
configured usable desktop.  

## Script features

- Distribution detection (To ensure it won't run on a non Arch system)
- Installs the Yay Aur helper. (If not already installed)
- Downloads and installs the latest dependencies required by Hyprland and Waybar
- Installs Hyprland and Waybar 
- Imports a custom themed config


## Futrure script addons (For now)

- Add common software (Choose what you want and what you dont want)
- Ability to change themes





# Install guide <a name="instalation">

```bash
git clone https://github.com/frazzlesgrant1994/hyprlandinstall.git
cd hyprlandinstall
bash install
```



