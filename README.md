# Calendar Notification

<img src="https://raw.githubusercontent.com/chebro/calendar-notification/master/assets/demo.gif" alt="demo" align="right">

> _currently supports i3blocks and polybar_

Calendar notifications for desktops running the dunst notification daemon.

## Dependencies

- [dunst notification daemon](https://github.com/dunst-project/dunst)
- [i3blocks](https://github.com/vivien/i3blocks) or [polybar](https://github.com/polybar/polybar)
- [cal](<https://en.m.wikipedia.org/wiki/Cal_(command)>)

## Actions

The `calendar` script is responsible for handling mouse events triggered by your bar, following are valid arguments:

```sh
./calendar curr # current month
./calendar next # increment month
./calendar prev # decrement month
```

## i3blocks

Create a date block:

```ini
[date]
command = ~/.config/i3blocks/scripts/date.sh
interval = 60
```

Copy the contents of `i3blocks` to `$HOME/.config/i3blocks` (to tweak the mouse actions see `i3blocks/scripts/date.sh`):

```bash
cp -rL i3blocks ~/.config # -L to dereference the symlink
```

## polybar

Copy `calendar` to your polybar config directory. Then, in your polybar config, you can use `click-left`, `scroll-up` and `scroll-down` actions to invoke the script. For example:

```ini
; add `calendar` to your modules list
[module/calendar]
type = custom/script
label = "󰃭"
exec = echo Calendar
click-left = ./calendar curr
scroll-up = ./calendar next
scroll-down = ./calendar prev
```
