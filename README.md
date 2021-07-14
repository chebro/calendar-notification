# Calendar Notification

<img src="https://raw.githubusercontent.com/chebro/calendar-notification/master/assets/demo.gif" alt="demo" align="right" width="300px">

> _currently only supports i3blocks_

Calendar notifications for desktops running the dunst notification daemon.

## Dependencies

- [dunst notification daemon](https://github.com/dunst-project/dunst) notification daemon
- [i3blocks](https://github.com/vivien/i3blocks)
- [bc](https://www.gnu.org/software/bc/manual/html_mono/bc.html)

## i3blocks

Create a date block in `~/.config/i3blocks/config`

```
[date]
command=~/.config/i3blocks/scripts/date.sh
interval=60
```

Copy the contents of `./i3blocks` to your `$HOME/.config/i3blocks/`

## Actions

- click     : current month
- scroll-up : increment month
- scroll-dn : decrement month
