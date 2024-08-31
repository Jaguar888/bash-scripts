sudo apt update
sudo apt install build-essential zlib1g-dev libssl-dev
sudo mkdir /var/lib/sshd
sudo chmod -R 700 /var/lib/sshd/
sudo chown -R root:sys /var/lib/sshd/
wget -c https://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-9.8p1.tar.gz
tar -xzf openssh-9.8p1.tar.gz
cd openssh-9.8p1/
sudo apt install libpam0g-dev libselinux1-dev
./configure --with-md5-passwords --with-pam --with-selinux --with-privsep-path=/var/lib/sshd/ --sysconfdir=/etc/ssh
make
sudo make install

sudo systemctl daemon-reload
sudo systemctl start sshd
sudo systemctl enable sshd
sudo systemctl unmask ssh
sudo systemctl daemon-reload
sudo systemctl start sshd
sudo systemctl enable sshd
sudo systemctl enable ssh
sudo systemctl start ssh
