# Script: updates-arch-combined

A script that shows if there are updates for Arch Linux and AUR updates.

See also [updates-arch](../updates-arch) and [updates-arch-aur](../updates-arch-aur).


## Dependencies

The possibilities depend on your AUR helper. Not all helpers can report the pending updates.

At the moment `trizen` and `cower` are documented. Take a look at the script to see how it works.


## Module

```
[module/updates-arch-combined]
type = custom/script
exec = ~/polybar-scripts/updates-arch-combined.sh
interval = 600
```
