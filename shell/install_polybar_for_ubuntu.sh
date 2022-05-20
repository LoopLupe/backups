#! /bin/bash
# https://github.com/cizordj/i3-themer

sudo apt-get install dunst i3 i3lock-fancy polybar xwallpaper rofi bash fonts-font-awesome xdg-utils sensible-utils alsa-utils rxvt-unicode fonts-firacode flameshot xautolock numlockx
git clone --depth=1 https://github.com/cizordj/i3-themer.git ../apps
cd ../apps/i3-themer/
./i3-themer -l
./i3-themer -a 000