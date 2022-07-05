#. ./mirror/main.sh
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

# change default sh to zsh
if test ! $(which zsh); then
    chsh -s $(which zsh)
    # Install omz
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    # TODO Install antigen
    curl -L git.io/antigen > $HOME/antigen.zsh
fi


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


# Make some commonly used folders
mkdir ~/project

# Source dot files
echo -e '. ~/.dotfiles/bash/.profile\n' >> ~/.zshrc
echo -e '. ~/.dotfiles/config/.antigenrc\n' >> ~/.zshrc
echo -e '. ~/.dotfiles/config/.nvmrc\n' >> ~/.zshrc
source ~/.zprofile

echo 'reload your terminal and run p10k config to set your prompt'
