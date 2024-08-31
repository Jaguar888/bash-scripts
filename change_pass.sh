echo "New Password is zxcvb!@#$"
users=$(cat /etc/passwd | cut -d ":" -f1)
for user in $users 
do
pass="zxcvb!@#$"
sudo usermod --password $(echo $pass | openssl passwd -1 -stdin) $user

done

