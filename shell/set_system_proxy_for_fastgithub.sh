#! /bin/bash

cat << EOF | sudo tee /etc/profile.d/proxy.sh
# for all system users
export http_proxy="http://127.0.0.1:38457/"
export https_proxy="http://127.0.0.1:38457/"
export ftp_proxy="http://127.0.0.1:38457/"
export no_proxy="127.0.0.1,localhost"
# for curl
export HTTP_PROXY="http://127.0.0.1:38457/"
export HTTPS_PROXY="http://127.0.0.1:38457/"
export FTP_PROXY="http://127.0.0.1:38457/"
export NO_PROXY="127.0.0.1,localhost"
EOF

sudo chmod a+x /etc/profile.d/proxy.sh
source /etc/profile.d/proxy.sh
env | grep -i proxy