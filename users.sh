echo "Displaying all users now."
/etc/passwd/ awk
echo "User to be removed: "
read varname
deluser "$varname"
echo "Done. Run this again to remove another user."
