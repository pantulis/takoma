#!/usr/bin/env bash

set -e;
cd "$HOME"
mkdir -p "$HOME/bin"
curl https://raw.githubusercontent.com/pantulis/takoma/master/takoma > "$HOME/bin/takoma" && chmod a+x $HOME/bin/takoma

echo
echo
echo "To complete installation of 'takoma' make sure that $HOME/bin is in your $PATH"
echo "by adding this file to your .profile" 
echo 'export PATH=$PATH:~/bin'
