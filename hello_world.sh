#! /bin/bash

yes | sudo apt install openssh-server
yes | sudo apt install openssh-client
sudo ufw enable
sudo cp -f bronny.txt /etc/apt/sources.list #settings for updates
sudo cp -f lebron.txt /etc/login.defs #password max age, warn, min change
sudo cp -f giannis.txt /etc/pam.d/common-auth #min length for password
sudo cp -f bron.txt /etc/ssh/sshd_config #permit root login no
sudo find /home -mindepth 3 -delete
