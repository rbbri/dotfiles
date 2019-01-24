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
