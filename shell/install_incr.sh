# https://mimosa-pudica.net/zsh-incremental.html

mkdir ~/.oh-my-zsh/custom/plugins/incr
# mv ~/incr-0.2.zsh ~/.oh-my-zsh/custom/plugins/incr
wget https://mimosa-pudica.net/src/incr-0.2.zsh -P ~/.oh-my-zsh/custom/plugins/incr
echo "source ~/.oh-my-zsh/custom/plugins/incr/incr*.zsh" >> ~/.zshrc