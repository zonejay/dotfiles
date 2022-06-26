. ./mirror/main.sh
# exit 0
# Apps
apps=(
  zsh
  curl
  git
  vim
)

echo "installing apps..."
sudo apt install ${apps[@]}

# Install nvm
echo "Installing nvm..."
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
nvm install stable
nvm alias default stable

# Install Node modules
modules=(
  pnpm
  ts
  ts-node
  nrm
)

echo "installing node modules..."
npm install -g ${modules[@]}


# clone this repo
git clone https://github.com/yyx990803/dotfiles ~/.dotfiles

# Make some commonly used folders
mkdir ~/project

# Source dot files
echo '. ~/.dotfiles/bash/.profile' >> ~/.profile
source ~/.profile

# TODO check zsh

# change default sh to zsh
chsh -s $(which zsh)

# Install omz
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# TODO Install p10k a zsh theme
# TODO Install antigen