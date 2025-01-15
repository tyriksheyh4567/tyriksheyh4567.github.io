#!/bin/sh
if [ -x "$(command -v apt)"];
then
  echo -e "Installing via apt (Ubuntu)...";
  sudo apt install zsh;
  curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh;
elif [ -x "$(command -v apk)"];
then
  echo -e "Installing via apk (Alpine)...";
  sudo apk add zsh;
  curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh;
exit 0;
