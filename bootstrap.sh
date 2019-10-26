#!/bin/zsh
# bootstrap script to install homebrew and ansible


# os detection of a sort
if uname -s | grep -q Darwin; then
  read -p "=== ensure you're logged in to the app store, then press enter ==="
  /usr/bin/xcode-select --install   # install xcode 
  read -p "=== press enter when your xcode install is done ==="
  if ! [ -x "$(command -v brew)" ]; then
    echo "\nbrew is not installed, let's install it"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
  brew install ansible

  # TODO: menu for tags, to run ansible-playbook right here? 

  ansible-playbook -i inventory jtmbp.yml -t macos,brew
fi 

