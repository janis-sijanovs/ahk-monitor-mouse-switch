# AutoHotkey MultiMonitor Mouse Switch

This is an AutoHotkey script that allows you to move the mouse cursor between monitors with a keyboard shortcut

To run it you need to install [AutoHotkey](https://www.autohotkey.com/)

### Features

The script will move the mouse between monitors left and right, as well as loop around.


It will center the mouse position on the new monitor


And it will also make the window under the new mouse position active

### Feel free to customize the script.

It's set to move to the right monitor when pressing `Ctrl + MouseBtn5`

Or to the left monitor with `Ctrl + MouseBtn4`

It doesn't detect how many monitors you have or in what order they're positioned

If you need to change something, you can simply edit the lines:

```
SysGet, M1, Monitor, 1
SysGet, M2, Monitor, 2
SysGet, M3, Monitor, 3
```

Change the number order, add or remove monitors, bend it to your needs
