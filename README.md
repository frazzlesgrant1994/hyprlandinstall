# Hyprland Installer

 > :warning: **WARNING:** This script is still being created so use with caution and expect some issues. 

![Screenshot](https://github.com/frazzlesgrant1994/hyprlandinstall/blob/main/screenshots/Screenshot1.png)

# Table of contents
1. [What is Hyprland?](#about)
2. [What is Hyprland installer?](#aboutinstall)
3. [Install guide](#instalation)
4. [Keybinds](#keybinds)
5. [Configuration](#config)



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


# Keybinds <a name="keybinds">

## Aplications
- SUPER, BACKSPACE , kills current window
- SUPER, W, exec , opens web browser
- SUPER,F,fullscreen , current window to full screen
- SUPER,RETURN , opens Terminal (Alacritty)
- SUPER,C , opens editor   
- SUPER,SHIFT,Q , quit session
- SUPER,E , opens file manager
- SUPER,S , search for programs
- ALT,TAB , switch between open windows
- SUPER,ESCAPE , sleep
- SUPER,ALT,L , screen lock
- CTRL,ALT,DELETE , opens power menu
- SUPER,SHIFT,C , colour picker
- SUPER,SHIFT,S , screenshot tool
- SUPER,R , ranger termainl file manager

## Window
- SUPER,T , toggle floating for active window
- SUPER,j , change active window (Down)
- SUPER,k , change active window (Up)
- SUPER,h , change active window (Left)
- SUPER,l , change active window (Right)
- SUPER,left , resize Window width
- SUPER,right , resize Window width
- SUPER,up , resize Window hight
- SUPER,down , resize Window hight
- SUPER,SHIFT,h , move active window (Left)
- SUPER,SHIFT,l , move active window (Right)
- SUPER,SHIFT,k , move active window (Up)
- SUPER,SHIFT,j , move active window (Down)

## Workspace
- SUPER,1 , move to workspace (1)
- SUPER,2 , move to workspace (2)
- SUPER,3 , move to workspace (3)
- SUPER,4 , move to workspace (4)
- SUPER,5 , move to workspace (5)
- SUPER,6 , move to workspace (6)
- SUPER,7 , move to workspace (7)
- SUPER,8 , move to workspace (8)
- SUPER,9 , move to workspace (9)
- SUPER,0 , move to workspace (0)
- SUPER,SHIFT,1 , move active to workspace (1)
- SUPER,SHIFT,2 , move active to workspace (2)
- SUPER,SHIFT,3 , move active to workspace (3)
- SUPER,SHIFT,4 , move active to workspace (4)
- SUPER,SHIFT,5 , move active to workspace (5)
- SUPER,SHIFT,6 , move active to workspace (6)
- SUPER,SHIFT,7 , move active to workspace (7)
- SUPER,SHIFT,8 , move active to workspace (8)
- SUPER,SHIFT,9 , move active to workspace (9)
- SUPER,SHIFT,0 , move active to workspace (0)
- SUPER, F1, help window


# Configuration <a name="config" >


