#! /bin/bash

yes | sudo apt install openssh-server
yes | sudo apt install openssh-client
sudo ufw enable
sudo cp -f IdealSecuritySettings.txt /etc/apt/sources.list #settings for updates
sudo cp -f PassAgeWarnChange.txt /etc/login.defs #password max age, warn, min change
sudo cp -f PassMinLen.txt /etc/pam.d/common-password #min length for password
sudo cp -f RootLoginDenial.txt /etc/ssh/sshd_config #permit root login no
sudo cp -f SetLockout.txt /etc/pam.d/common-auth #permit root login no

