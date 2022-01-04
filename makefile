all: README.md 

README.md: guessinggame.sh
	echo "Unix Workbench Coursera project: Guessing Game" >README.md 
	echo -n "\n** Date time completed**: " >>README.md
	date >> README.md 
	echo -n "\n** Line count of guessingame.sh**" >> README.md
	grep -c '' guessinggame.sh >> README.md
clean: 
	rm README.md




