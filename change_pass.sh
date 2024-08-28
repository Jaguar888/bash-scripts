users=$(cat /etc/passwd | cut -d ":" -f1)
for user in users:
  args = "$username"
  args += ":Cyb3rCont3st!"
  sudo chpass "$args"
