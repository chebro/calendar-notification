# Calendar Notification

<img src="https://raw.githubusercontent.com/chebro/calendar-notification/master/assets/demo.gif" alt="demo" align="right">

> _currently only supports i3blocks_

Calendar notifications for desktops running the dunst notification daemon.

## Dependencies

- [dunst notification daemon](https://github.com/dunst-project/dunst)
- [i3blocks](https://github.com/vivien/i3blocks)
- [cal](https://en.m.wikipedia.org/wiki/Cal_(command))
- [bc](https://www.gnu.org/software/bc/manual/html_mono/bc.html)

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

```
[date]
command=~/.config/i3blocks/scripts/date.sh
interval=60
```

Copy the contents of `i3blocks` to your `$HOME/.config/i3blocks/`

