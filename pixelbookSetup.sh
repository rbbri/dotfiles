# Install zsh
sudo apt-get install zsh
# Change shell to zsh
sudo chsh -s /usr/bin/zsh whoami
# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Install Powerlevel9k theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
# Install Powerlevel fonts
  # Install wget
  sudo apt-get install wget
  # Download fonts and fontconfig file
  wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
  wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
  # move to fonts folder
  sudo mv PowerlineSymbols.otf /usr/share/fonts/
  #  update font cache
  sudo fc-cache -vf /usr/share/fonts/
  #  install fontconfig file
  sudo mv 10-powerline-symbols.conf /usr/share/fontconfig/conf.avail/
# Install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
# Install node
nvm install node
#  Install postgresql
sudo apt-get install postgresql
  # Create user database
  psql postgres
  CREATE DATABASE robinsjohnson
  \q
#  install ssh and generate a key
sudo apt-get install ssh
ssh-keygen -t rsa -b 4096 -C "robin.s.johnson@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub
#  git setup
git config --global user.email "robin.s.johnson@gmail.com"
git config --global user.name "rbbri"
#  Flutter setup
sudo apt-get install lib32stdc++6
curl -O https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_v1.0.0-stable.tar.xz
tar xf flutter_linux_v1.0.0-stable.tar.xz
export PATH=`pwd`/flutter/bin:$PATH
