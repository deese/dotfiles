#!/bin/sh

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing homebrew packages..."

# cli tools
brew install ack
brew install tree
brew install wget

# development tools
brew install git
brew install hub
brew install macvim --override-system-vim
brew install reattach-to-user-namespace
brew install tmux
brew install zsh
brew install highlight
brew install nvm
brew install z
brew install markdown

# network/hacking tools
brew install aircrack-ng
brew install curl
brew install dos2unix
brew install geoip
brew install geoipupdate
brew install hping
brew install lftp
brew install libelf
brew install midnight-commander
brew install mysql
brew install ngrep
brew install nmap
#brew install python
brew install tcpreplay
brew install tmux

# install neovim
brew install neovim/neovim/neovim

# install  lesspager
brew install lesspager

exit 0
