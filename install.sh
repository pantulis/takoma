#!/usr/bin/env bash
echo "Donwloading takoma..."
mkdir -p "$HOME/bin"
curl -s -S https://raw.githubusercontent.com/pantulis/takoma/master/takoma > "$HOME/bin/takoma" && chmod a+x $HOME/bin/takoma 

echo
echo 'To complete installation of takoma make sure that $HOME/bin is in your $PATH'
echo 'by adding this line to your .profile:'
echo
echo 'export PATH=$PATH:~/bin'
