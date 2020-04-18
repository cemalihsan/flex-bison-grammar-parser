There is a Makefile in order to run the program directly.

To run on Makefile:
	make
	cat grammar.output

To run manually:
	bison -l -d -v grammar.y
	flex grammar.l
	gcc grammar.tab.c lex.yy.c -o grammar
	./grammar
	cat grammar.output 