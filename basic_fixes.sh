#! /bin/bash

sudo bash change_pass.sh
yes | sudo apt install openssl
sudo ufw enable
sudo bash IndivScripts/change_pass.sh
sudo cp -f Ideals/IdealSecuritySettings.txt /etc/apt/sources.list #settings for>
sudo cp -f Ideals/PassAgeWarnChange.txt /etc/login.defs #password max age, warn>
sudo cp -f Ideals/PassMinLen.txt /etc/pam.d/common-password #min length for pas>
yes | sudo apt install openssh-server
yes | sudo apt install openssh-client
sudo cp -f Ideals/RootLoginDenial.txt /etc/ssh/sshd_config #permit root login no
sudo cp -f Ideals/SetLockout.txt /etc/pam.d/common-auth #lockout
sudo bash IndivScripts/firefox_updater.sh
