set -e
sudo apt install openssl
users=$(cat /etc/passwd | cut -d ":" -f1)
for user in $users; do
        pass = "Cyb3rCont3st!"
	sudo usermod --password $(echo "$pass" | openssl passwd -1 -stdin) $user
echo "Program Complete. Password set to Cyb3rCont3st!"
done
