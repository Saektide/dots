# dots
![Sample](sample.png)
[Background](bg.jpg) | [neofetch Icon](pyro.png)

Dotfiles exclusively for [i3-gaps](https://github.com/Airblader/i3).

> ⚠️ **Before you install**
> * Do a backup of your dotfiles.
> * Do a double check of the `i3` config file (`.config/i3/config` again, in the repo folder) and make sure all it's ok for your environment.

## packages
* [a forked version of picom](https://github.com/ibhagwan/picom)
* [kitty](https://github.com/kovidgoyal/kitty)
* [polybar](https://github.com/polybar/polybar)
* [cava](https://github.com/karlstav/cava) (optional)
* [zsh](https://github.com/ohmyzsh/ohmyzsh) (optional)
* [xrandr](https://www.x.org/wiki/Projects/XRandR/)
* [feh](https://github.com/derf/feh)
* [rofi](https://github.com/davatorium/rofi)

## polybar - third party modules
* [polybar-spotify](https://github.com/Jvanrhijn/polybar-spotify) (already included in this repo, might be outdated)

## other
* **font** [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads)
* **icons**
  * [Material Icons](https://fonts.google.com/icons?selected=Material+Icons)
  * [FontAwesome Icons 5](https://fontawesome.com/v5.15/how-to-use/on-the-desktop/setup/getting-started)
* **power menu** [rofi-power-menu](https://github.com/jluttine/rofi-power-menu)

## quick install (Arch)
1. Install required packages.
```sh
yay -S picom-ibhagwan-git kitty polybar xrandr feh rofi
```
2. Clone the repo and `cd` to it.
```sh
git clone https://github.com/Saektide/dots.git && cd dots
```
3. Run the apply script with the option to restart the i3 instance.
```sh
sudo ./apply.sh -r
```

## apply script (options)
* `-h` Show the help screen.
* `-c` Select a module/package to apply the desired config.
* `-r` Restart the i3 instance after apply process.
* `-b` Bypass the confirmation (press any key to continue).
* `-o` Apply files that are in the `.other` folder.

### examples
Apply dotfiles only for `rofi` and bypass the confirmation prompt.
```sh
sudo ./apply.sh -c rofi -b
```
Apply dotfiles only for `i3`, bypass the confirmation prompt and restart the i3 instance.
```sh
sudo ./apply.sh -c i3 -b -r
```

## updating
If you want to keep up-to-date your dotfiles with this repo, do a `cd` to the repo folder, pull the changes and re-apply them.
```
git pull && sudo ./apply.sh
```

## troubleshooting

### I have another version of picom.
Simply remove that version and install the ibhagwan's version. Kill the process (`pkill picom`) before do this. If you're in Arch simply do `yay -R picom` and then `yay -S picom-ibhagwan-git`.

### It looks different on my screen...
If you have any problem installing the dotfiles, open an [issue](https://github.com/Saektide/dots/issues) and don't forget to provide logs and your machine info (use `neofetch` or similar), you can provide screenshots if needed!
