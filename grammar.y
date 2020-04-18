%{
	#include<stdio.h>
	#include<stdlib.h>
	#include<ctype.h>
%}
%token ID 
%start S
%left '+'
%left '-'
%%
S:E 
 ;

E: E '+' E 
 | '-'E 
 | ID 
 ;
%% 

extern FILE *yyin;

//Reading the file which contains the related grammar in order to parse with the rules

int main(void){
	
	FILE *ffile = fopen("id.txt", "r");

	if(!ffile){
		printf("Cannot open file!!!");
	}
	else {
		printf("File opened successfully!\n");
	}

	yyin = ffile;

	while(!feof(yyin)){

		yyparse();

		printf("To see output write 'cat grammar.output' to terminal\n");
	}

return 0;
}

yywrap(){
}

yyerror(){
	printf("Error occured\n");
}

