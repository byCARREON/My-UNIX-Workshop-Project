all: README.md

README.md: guessinggame.sh
	echo "# Unix Workbench Project" > README.md

	echo "My project's run date and time: " >> README.md
	date >> README.md

	echo "The number of lines of code contained in guessinggame.sh: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
