all: Install Welcome

Install:
	brew install cowsay

Welcome:
	cowsay -f stegosaurus "Welcome to the guessing game"
	
