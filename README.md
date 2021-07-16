# Calendar Notification

<img src="https://raw.githubusercontent.com/chebro/calendar-notification/master/assets/demo.gif" alt="demo" align="right">

> _currently supports i3blocks and polybar_

Calendar notifications for desktops running the dunst notification daemon.

## Dependencies

- [dunst notification daemon](https://github.com/dunst-project/dunst)
- [i3blocks](https://github.com/vivien/i3blocks) (or) [polybar](https://github.com/polybar/polybar)
- [cal](<https://en.m.wikipedia.org/wiki/Cal_(command)>)

## Actions

The action script at `i3blocks/actions/date.sh` is responsible for handling events, the script accepts the following arguments:

```sh
ACTION="./i3blocks/actions/date.sh"
$ACTION curr # current month
$ACTION next # increment month
$ACTION prev # decrement month
```

## i3blocks

Create a date block in `~/.config/i3blocks/config`

```ini
[date]
command=~/.config/i3blocks/scripts/date.sh
interval=60
```

Copy the contents of `i3blocks` to your `$HOME/.config/i3blocks/`

## polybar

Copy `i3blocks/actions/date.sh` to your polybar config directory. Then, in your polybar config, you can use `click-left`, `scroll-up` and `scroll-down` actions to invoke the script. For example:

```ini
; add `calendar` to your modules list
[module/calendar]
type = custom/script
label = "󰃭"
exec = echo Calendar
click-left = ./date.sh curr
scroll-up = ./date.sh next
scroll-down = ./date.sh prev
```
