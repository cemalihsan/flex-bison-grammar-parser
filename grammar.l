%{
	#include "grammar.tab.h"
	#include <stdio.h>
	#include <stdlib.h>
%}
%%
[a-zA-Z0-9][a-zA-Z0-9]	{return ID;}  //takes two letter to parse
[ \t]		{;}
\n 			{return 0;}
.			{return yytext[0];}
%%