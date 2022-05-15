#! /bin/bash
# https://www.nerdfonts.com/font-downloads

mkdir ../fonts
wget -e "https_proxy=https://127.0.0.1:38457" https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip -P ../fonts
wget -e "https_proxy=https://127.0.0.1:38457" https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraMono.zip -P ../fonts
mkdir -p ~/.local/share/fonts
unzip ../fonts/FiraCode.zip -d ~/.local/share/fonts
unzip ../fonts/FiraMono.zip -d ~/.local/share/fonts
sudo fc-cache -f -v

