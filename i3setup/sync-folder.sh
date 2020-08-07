#!/bin/bash
echo "syncing to git folder"
cp -r -u -v ~/i3setup ~/Documents/kali-i3setup/

echo "syncing with git"
git -C "/home/drsh0/Documents/kali-i3setup/" add -A --verbose

