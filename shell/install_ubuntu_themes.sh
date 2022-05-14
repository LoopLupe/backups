#! /bin/bash

sudo apt update
sudo apt install gnome-tweaks gnome-shell-extension-manager
# https://github.com/horst3180/Arc-theme
sudo apt install arc-theme
# https://github.com/nana-4/materia-theme
sudo apt install materia-gtk-theme

mkdir -p ../apps/themes
git clone https://github.com/vinceliuice/Orchis-theme.git ../apps/themes/Orchis-theme
# https://github.com/vinceliuice/Qogir-theme
git clone https://github.com/vinceliuice/Qogir-theme.git ../apps/themes/Qogir-theme
# https://github.com/vinceliuice/Qogir-icon-theme
git clone https://github.com/vinceliuice/Qogir-icon-theme.git ../apps/themes/Qogir-icon-theme
# https://github.com/PapirusDevelopmentTeam/papirus-icon-theme
git clone https://github.com/PapirusDevelopmentTeam/papirus-icon-theme.git ../apps/themes/papirus-icon-theme

../apps/themes/Orchis-theme/install.sh
../apps/themes/Orchis-theme/src/gnome-shell/extensions/dash-to-panel/install.sh
../apps/themes/Qogir-theme/install.sh
../apps/themes/Qogir-icon-theme/install.sh
../apps/themes/papirus-icon-theme/install.sh