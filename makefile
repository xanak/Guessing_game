all: presentation generate run clean

presentation:
	@echo "Welcome to the Guessing name"

generate:
	bash files.sh
run:
	bash guessinggame.sh

clean:
	@echo "Cleaning up..."
	rm *.txt


