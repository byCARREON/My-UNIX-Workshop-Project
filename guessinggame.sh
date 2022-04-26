function guessfunction(){
    files=$(ls | wc -l)
    correct=1

    while [[ $correct -gt 0 ]];
    do
        echo "Enter your guess as a number"
        read  guess

	if [ $guess -lt $files ]
        then
            echo "Incorrect, a lower number was entered"

	elif [ $guess -gt $files ]
        then
            echo "Incorrect, a greater number was entered"

	 else
            echo "Good! the correct number was entered"
            let correct=$correct-1
        fi
    done
}

echo "How many files are in this current directory?"
guessfunction

echo "The program has completed all tasks and is shutting down"