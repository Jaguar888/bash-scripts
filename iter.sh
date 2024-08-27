directory="/home"

function iterate() {
  local dir="$1"

  for file in "$dir"/*; do
    if [ -f "$file" ]; then
      echo "$file"
    fi

    if [ -d "$file" ]; then
      iterate "$file"
    fi
  done
}

iterate "$directory"