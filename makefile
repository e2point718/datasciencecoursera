all: genreadme

genreadme:
  echo "## Project guessinggame.sh \n" > README.md
	echo -n "Last build date: " >> README.md
	date >> README.md
	echo -n "\nLines of code in guessinggame.sh: " >> README.md
	wc -l < ./guessinggame.sh >> README.md
