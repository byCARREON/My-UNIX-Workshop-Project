# Guessing Game Function

function guessingLoop {
  while [[ $response -ne $correct_number ]]
  do 
    if [[ $response -lt $correct_number ]]
    then
      echo "The number entered was lower than expected."
      read response
    elif [[ $response -gt correct_number ]]
    then
      echo "The number entered was higher than expected."
      read response
    fi
  done
  echo "Good! Your answer was indeed correct"
}

echo "Welcome to the Guessing Game: enter your guess of how many files are in this current directory"
read response

correct_number=$(ls | wc -l)
guessloop response correct_number

# End of guessing game