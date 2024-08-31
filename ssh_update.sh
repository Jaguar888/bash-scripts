sudo apt purge openssh-client -y
sudo apt purge openssh-server -y
sudo apt update
sudo apt upgrade
yes | sudo apt install openssh-server
yes | sudo apt install openssh-client
sudo systemctl enable ssh
sudo systemctl start ssh
