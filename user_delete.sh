echo "Displaying all users now."
cat /etc/passwd | grep home  |cut -d: -f1
read -r -p "Would you like to remove a user? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    echo "Who would you like to remove?"
    read user
    deluser "$user"
else
    echo "Program Complete. Or you failed to Remove a user..."
fi
