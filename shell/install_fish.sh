#! /bin/bash

sudo apt update
sudo apt install -y fish curl jq

# curl -L https://get.oh-my.fish | fish
# curl -L https://get.oh-my.fish > install
# fish install --path=~/.local/share/omf --config=~/.config/omf


curl -x http://127.0.0.1:38457 -L https://get.oh-my.fish | fish