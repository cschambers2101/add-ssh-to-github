#!/bin/bash!

# Script to create and add an SSH key for Github

clear
read -p "What is your email address? " emailaddress
echo 'You entered: '${emailaddress}
echo 'If this is not correct, press [ctrl] + [c] now to exit script'
echo
ssh-keygen -t rsa -b 4096 -C "$emailaddress"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub
echo
echo
echo 'You must now paste the key generated into your Github account. Go to github.com, then click on your icon in the top right og any page and then settings. Go to 'SSH and GPG keys', click new SSH Key, add a name for the key (machine name) and then hit [ctrl] + [v] to paste the key into the box and press 'Add SSH Key' button'
echo
echo 'SSH key will now be installed'



