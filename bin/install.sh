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

# Install Cask
echo "Installing Homebrew Cask…"
brew tap homebrew/bundle
brew install caskroom/cask/brew-cask

# Install Homebrew Bundle
echo "Installing Homebrew Bundle…"
brew bundle

# Install XCode Command Line Tools.
echo "Installing xcode-select… 🔨"
xcode-select --install

# Rbenv and ruby-build
echo "Installing rbenv and ruby-build…"
brew install rbenv ruby-build

# Install Ruby 2.2.3
echo "Installing Ruby 2.2.3…"
rbenv install 2.2.3
rbenv global 2.2.3

# Rehash Rbenvnv
echo "Rehashing Gems for this Ruby build…"
rbenv rehash

# Install Gemfile
echo "Installing Rubygems… 💎"
bundle install --system

# Install Node
echo "Installing Node…"
brew install node
brew link node
brew link --override node

# Install Bower
echo "Installing Bower…"
npm install -g bower

# Install Gulp
echo "Installing Gulp… 🍹"
npm install -g gulp

# Install Ember CLI
echo "Installing Ember CLI…"
npm install -g ember-cli

# Install Atom packages
# To list currently installed Atom packages use:
# apm list --bare --installed --dev false > Atomfile
echo "Installing Atom packages…"
apm install --packages-file Atomfile

echo "Configuring OSX preferences…"
./osx-preferences/osx.sh

echo "Installation completed…"
echo $SHELL
