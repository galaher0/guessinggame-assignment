dt := $(shell date '+%F %T')
lines := $(shell wc -l guessinggame.sh | egrep -o [0-9]+)

README.md: guessinggame.sh
	@echo "##Guessing game\n" > README.md
	@echo "Make was run on $(dt)\n" >> README.md	
	@echo "Number of lines of code contained in guessinggame.sh: $(lines)" >> README.md
