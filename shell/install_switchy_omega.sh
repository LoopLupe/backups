#! /bin/bash

wget -e "https_proxy=https://127.0.0.1:38457" https://github.com/FelisCatus/SwitchyOmega/releases/download/v2.5.20/SwitchyOmega_Chromium.crx -P ../apps
cp ../apps/SwitchyOmega_Chromium.crx ./apps/SwitchyOmega_Chromium.zip
unzip ../apps/SwitchyOmega_Chromium.zip -d /opt/apps/switchyomega_chrome