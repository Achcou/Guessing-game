#!/bin/bash
get_file_count() {
  echo $(ls -1 | wc -l)
}

file_count=$(get_file_count)
guessed_correctly=false

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

while [ "$guessed_correctly" == "false" ]; do
  read -p "Enter your guess: " guess
  
  if [ "$guess" -lt "$file_count" ]; then
    echo "Your guess is too low. Try again!"
  elif [ "$guess" -gt "$file_count" ]; then
    echo "Your guess is too high. Try again!"
  else
    echo "Congratulations! You guessed the correct number of files."
    guessed_correctly=true
  fi
done
