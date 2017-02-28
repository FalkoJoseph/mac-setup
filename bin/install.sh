#!/bin/sh

# Go home
echo "We're coming home… 🚀"
echo "./home"
cd ./home

# Check if XCode Select is installed
if ![ which xcode-select ]; then
  echo "Command line tools not installed!"
  return
else
  # Install Homebrew
  echo "Installing Homebrew… 🍻"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Prepare Homebrew for further installations
echo "Preparing Homebrew…"
brew update
brew upgrade
brew cleanup

# Install brews
echo "Installing bundles…"
brew install $(cat Brewfile|grep -v "#")

# Install XCode Command Line Tools.
echo "Installing xcode-select… 🔨"
xcode-select --install

# Rbenv and ruby-build
echo "Installing rbenv and ruby-build…"
brew install rbenv ruby-build

# Install Ruby 2.4.0
echo "Installing Ruby 2.4.0…"
rbenv install 2.4.0
rbenv global 2.4.0

# Rehash Rbenvnv
echo "Rehashing Gems for this Ruby build…"
rbenv rehash

# Install Node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
nvm install node
nvm use node
nvm alias default stable

# Install Bower
echo "Installing Bower…"
npm install -g bower

# Install Gulp
echo "Installing Gulp… 🍹"
npm install -g gulp

# Install Atom packages
# To list currently installed Atom packages use:
# apm list --bare --installed --dev false > Atomfile
echo "Installing Atom packages…"
apm install --packages-file Atomfile

# Install Gemfile
echo "Installing Rubygems… 💎"
bundle install --system

echo "Installation completed… ✨"
echo $SHELL
