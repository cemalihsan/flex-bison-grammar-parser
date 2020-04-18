all: grammar run-output 
	
grammar.tab.c grammar.tab.h: grammar.y
	bison -l -d -v grammar.y

lex.yy.c: grammar.l grammar.tab.h
	flex grammar.l

grammar: lex.yy.c grammar.tab.c grammar.tab.h
	gcc grammar.tab.c lex.yy.c -o grammar

.PHONY: run-output

run-output: grammar
	./grammar
