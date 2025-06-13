%{
#include "project.tab.h"
#include <stdio.h>
void yyerror(char *);
%}

%%

"if"                { return IF; }
"else"              { return ELSE; }
"print"             { return PRINT; }
[0-9]+		{ yylval = atoi(yytext); return NUM; } // Convert string to integer and set yylval
[a-zA-Z][0-9a-zA-Z]* { return ID; }
[ \t\n]             ; /* Ignore whitespace */
.                   { return *yytext; } /* Return single characters */

%%

int yywrap() {
    return 1;
}