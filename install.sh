#!/bin/sh

set -e

cd ~

wget -o .vimrc_wades https://wyattades.github.io/.vimrc

if [ -f ".bashrc" ]; then
  echo "alias wvim='vim -u ~/.vimrc_wades'" >> .bashrc
elif [ -f ".shrc" ]; then
  echo "alias wvim='vim -u ~/.vimrc_wades'" >> .shrc
else
  echo "Failed to create alias"
  exit 1
fi

# Delete self
rm -- "$0"