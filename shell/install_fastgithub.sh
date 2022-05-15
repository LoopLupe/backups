#! /bin/bash

mkdir ../apps
sudo apt install -y wget
wget -e "https_proxy=https://127.0.0.1:38457" https://github.com/dotnetcore/FastGithub/releases/download/2.1.4/fastgithub_linux-x64.zip -P ../apps
sudo mkdir /opt/apps
sudo chown steve:steve -R /opt/apps
unzip ../apps/fastgithub_linux-x64.zip -d /opt/apps

cat << EOF | tee ~/.local/shell/start_fastgithub.sh
#! /bin/bash

app=/opt/apps/fastgithub_linux-x64/fastgithub
log=fastgithub.log
log_home="\${LOCAL_HOME}/log"

nohup \${app} > \${log_home}/\${log} 2>&1 &
EOF

sudo chmod a+x ~/.local/shell/start_fastgithub.sh
ln -s ~/.local/shell/start_fastgithub.sh ~/.local/bin/fastgihub

# sudo /opt/apps/fastgithub_linux-x64/fastgithub start
fastgihub # 请设置系统自动代理为http://127.0.0.1:38457，或手动代理http/https为127.0.0.1:38457
# sudo ./fastgithub start # 以systemd服务安装并启动
# sudo ./fastgithub stop # 以systemd服务卸载并删除
ps -ef|grep fastgithub|grep -v "grep"

sudo apt install -y git
git config --global http.proxy 127.0.0.1:38457
git config --global https.proxy 127.0.0.1:38457

cat << EOF | tee ~/.wgetrc
#You can set the default proxies for Wget to use for http, https, and ftp.
# They will override the value in the environment.
https_proxy = http://127.0.0.1:38457/
http_proxy = http://127.0.0.1:38457/
ftp_proxy = http://127.0.0.1:38457/

# If you do not want to use proxy at all, set this to off.
use_proxy = on
EOF