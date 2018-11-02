dt := $(shell date '+%F %T')
lines := $(shell wc -l guessinggame.sh | egrep -o [0-9]+)

all: README.md

README.md: guessinggame.sh
	@echo "## Guessing game\n" > README.md
	@echo "Make was run on **$(dt)**\n" >> README.md	
	@echo "Number of lines of code contained in \`guessinggame.sh\`: **$(lines)**" >> README.md

clean:
	@rm README.md
