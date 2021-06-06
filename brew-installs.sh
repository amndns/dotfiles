#!/usr/bin/env bash

# Check if Homebrew is installed
which -s brew
if [[ $? != 0 ]] ; then
  # Install Homebrew
  echo 'Please install Homebrew by running the following command: /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'
else
  brew update
fi

# Upgrade installed formulae
brew upgrade

# Install some other useful utilities like `sponge`
brew install moreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils

# Install GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed --with-default-names

# Install `wget` with IRI support
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits
brew install gnupg

# Install more recent versions of some macOS tools
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install php
brew install gmp

# Install other useful binaries
brew install fzf
brew install git
brew install git-lfs
brew install github/gh/gh
brew install htop
brew install imagemagick --with-webp
brew install ssh-copy-id
brew install tmux
brew install tree
brew install zsh

# Remove outdated versions from the cellar
brew cleanup
