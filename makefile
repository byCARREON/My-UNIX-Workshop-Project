all: README.md

README.md: guessinggame.sh
	echo "# My Unix Workbench Project by Juan Carreón" > README.md

	echo "My project's run date and time is: " >> README.md
	date >> README.md

	echo "Total number of lines in guessinggame.sh: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
