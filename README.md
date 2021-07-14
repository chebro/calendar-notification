# calendar-notification

> _currently only supports i3blocks_

![demo](/assets/out.gif)

# Dependencies

- [dunst](https://github.com/dunst-project/dunst) notification daemon
- [i3blocks](https://github.com/vivien/i3blocks)
- [bc](https://www.gnu.org/software/bc/manual/html_mono/bc.html)

# i3blocks

Create a date block in `~/.config/i3blocks/config`

```
[date]
command=~/.config/i3blocks/scripts/date.sh
interval=60
```

Copy the contents of `./i3blocks` to your `$HOME/.config/i3blocks/`

# Actions

- click     : current month
- scroll-up : increment month
- scroll-dn : decrement month
