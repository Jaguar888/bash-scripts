yes | sudo make install
wget https://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-9.8p1.tar.gz
sudo systemctl stop sshd
yes | sudo apt-get remove openssh-server openssh-client
sudo apt update
yes | sudo apt install -y build-essential zlib1g-dev libssl-dev libpam0g-dev libselinux1-dev libwrap0-dev libedit-dev libbsd-dev autoconf automake libtool pkg-config wget curl git
tar zxvf openssh-9.8p1.tar.gz
cd openssh-9.8p1
./configure
make
cp -f SSHDSetup.txt /etc/systemd/system/sshd.service
sudo systemctl daemon-reload
sudo systemctl start sshd
sudo systemctl enable sshd
sudo systemctl unmask ssh
sudo systemctl daemon-reload
sudo systemctl start sshd
sudo systemctl enable sshd
