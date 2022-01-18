all: Install Welcome README

Install:
	brew install cowsay

Welcome:
	cowsay -f stegosaurus "Welcome to the guessing game"
		
Create README:
	echo "# This proyect is called the Guessing game for Coursera" >> README.md
	echo "## Make was run in" >> README.md
	date>>README.md
	echo "## And the number of lines are" >> README.md
	wc -l guessinggame.sh >>README.md
